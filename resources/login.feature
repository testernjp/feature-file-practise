Feature: Login functionality
  As a user I want to test login page

  Scenario: Verify user navigate to login page successfully
    Given I am on home page
    When  I click on login link
    Then I should navigate to login page successfully

    Scenario Outline: User should not login with invalid credentials
      Given     User is on the login page
      When      User enters invalid "<username>" in username field
      And       User enters valid "<password>" in password field
      And		  User clicks in login button
      Then	  User is not logged in
      And       User can see "<error message>"

      Examples:
        | username  		 | password 	| error message        |
        | prime123@gmail.com | prime321		| invalid credentials  |
        | prime321@gmail.com | prime123		| invalid credentials  |
        | prime321@gmail.com | prime321		| invalid credentials  |
        | prime123@gmail.com | 				| No empty credentials |