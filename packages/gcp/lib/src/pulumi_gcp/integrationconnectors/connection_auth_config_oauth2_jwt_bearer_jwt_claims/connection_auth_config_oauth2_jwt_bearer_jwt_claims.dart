// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigOauth2JwtBearerJwtClaims {
  /// Value for the "aud" claim.
  ///
  /// <a name="nested_auth_config_oauth2_client_credentials"></a>The `oauth2_client_credentials` block supports:
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
