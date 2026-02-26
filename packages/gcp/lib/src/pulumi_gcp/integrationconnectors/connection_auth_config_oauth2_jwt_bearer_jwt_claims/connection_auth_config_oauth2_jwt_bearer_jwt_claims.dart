// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigOauth2JwtBearerJwtClaims {
  /// Value for the "aud" claim.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedAuthConfigOauth2ClientCredentials"" pulumi-lang-dotnet=""NestedAuthConfigOauth2ClientCredentials"" pulumi-lang-go=""nestedAuthConfigOauth2ClientCredentials"" pulumi-lang-python=""nested_auth_config_oauth2_client_credentials"" pulumi-lang-yaml=""nestedAuthConfigOauth2ClientCredentials"" pulumi-lang-java=""nestedAuthConfigOauth2ClientCredentials"">"nested_auth_config_oauth2_client_credentials"</span>></a>The <span pulumi-lang-nodejs="`oauth2ClientCredentials`" pulumi-lang-dotnet="`Oauth2ClientCredentials`" pulumi-lang-go="`oauth2ClientCredentials`" pulumi-lang-python="`oauth2_client_credentials`" pulumi-lang-yaml="`oauth2ClientCredentials`" pulumi-lang-java="`oauth2ClientCredentials`">`oauth2_client_credentials`</span> block supports:
  final String? audience;

  /// Value for the "iss" claim.
  final String? issuer;

  /// Value for the "sub" claim.
  final String? subject;

  ConnectionAuthConfigOauth2JwtBearerJwtClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audienceValue = audience;
    if (audienceValue != null) {
      map['audience'] = audienceValue;
    }
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    return map;
  }

  factory ConnectionAuthConfigOauth2JwtBearerJwtClaims.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2JwtBearerJwtClaims(
      audience: map['audience'] == null ? null : map['audience'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
    );
  }
}
