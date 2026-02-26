// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileSalesforceProfileUserCredentials {
  /// Password of the user.
  final String? password;

  /// A reference to a Secret Manager resource name storing the user's password.
  final String? secretManagerStoredPassword;

  /// A reference to a Secret Manager resource name storing the user's security token.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedSalesforceProfileOauth2ClientCredentials"" pulumi-lang-dotnet=""NestedSalesforceProfileOauth2ClientCredentials"" pulumi-lang-go=""nestedSalesforceProfileOauth2ClientCredentials"" pulumi-lang-python=""nested_salesforce_profile_oauth2_client_credentials"" pulumi-lang-yaml=""nestedSalesforceProfileOauth2ClientCredentials"" pulumi-lang-java=""nestedSalesforceProfileOauth2ClientCredentials"">"nested_salesforce_profile_oauth2_client_credentials"</span>></a>The <span pulumi-lang-nodejs="`oauth2ClientCredentials`" pulumi-lang-dotnet="`Oauth2ClientCredentials`" pulumi-lang-go="`oauth2ClientCredentials`" pulumi-lang-python="`oauth2_client_credentials`" pulumi-lang-yaml="`oauth2ClientCredentials`" pulumi-lang-java="`oauth2ClientCredentials`">`oauth2_client_credentials`</span> block supports:
  final String? secretManagerStoredSecurityToken;

  /// Security token of the user.
  final String? securityToken;

  /// Username to use for authentication.
  final String? username;

  ConnectionProfileSalesforceProfileUserCredentials({
    this.password,
    this.secretManagerStoredPassword,
    this.secretManagerStoredSecurityToken,
    this.securityToken,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final secretManagerStoredPasswordValue = secretManagerStoredPassword;
    if (secretManagerStoredPasswordValue != null) {
      map['secretManagerStoredPassword'] = secretManagerStoredPasswordValue;
    }
    final secretManagerStoredSecurityTokenValue =
        secretManagerStoredSecurityToken;
    if (secretManagerStoredSecurityTokenValue != null) {
      map['secretManagerStoredSecurityToken'] =
          secretManagerStoredSecurityTokenValue;
    }
    final securityTokenValue = securityToken;
    if (securityTokenValue != null) {
      map['securityToken'] = securityTokenValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ConnectionProfileSalesforceProfileUserCredentials.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileSalesforceProfileUserCredentials(
      password: map['password'] == null ? null : map['password'] as String,
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null
          ? null
          : map['secretManagerStoredPassword'] as String,
      secretManagerStoredSecurityToken:
          map['secretManagerStoredSecurityToken'] == null
              ? null
              : map['secretManagerStoredSecurityToken'] as String,
      securityToken:
          map['securityToken'] == null ? null : map['securityToken'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
