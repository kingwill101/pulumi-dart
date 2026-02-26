// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialUsernameAndPassword {
  /// Password to be used.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedDecryptedCredentialOauth2AuthorizationCode"" pulumi-lang-dotnet=""NestedDecryptedCredentialOauth2AuthorizationCode"" pulumi-lang-go=""nestedDecryptedCredentialOauth2AuthorizationCode"" pulumi-lang-python=""nested_decrypted_credential_oauth2_authorization_code"" pulumi-lang-yaml=""nestedDecryptedCredentialOauth2AuthorizationCode"" pulumi-lang-java=""nestedDecryptedCredentialOauth2AuthorizationCode"">"nested_decrypted_credential_oauth2_authorization_code"</span>></a>The <span pulumi-lang-nodejs="`oauth2AuthorizationCode`" pulumi-lang-dotnet="`Oauth2AuthorizationCode`" pulumi-lang-go="`oauth2AuthorizationCode`" pulumi-lang-python="`oauth2_authorization_code`" pulumi-lang-yaml="`oauth2AuthorizationCode`" pulumi-lang-java="`oauth2AuthorizationCode`">`oauth2_authorization_code`</span> block supports:
  final String? password;

  /// Username to be used.
  final String? username;

  AuthConfigDecryptedCredentialUsernameAndPassword({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialUsernameAndPassword.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialUsernameAndPassword(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
