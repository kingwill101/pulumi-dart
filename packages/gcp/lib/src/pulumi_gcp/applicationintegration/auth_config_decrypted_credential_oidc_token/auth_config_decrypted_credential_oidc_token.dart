// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialOidcToken {
  /// Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  final String? audience;

  /// The service account email to be used as the identity for the token.
  final String? serviceAccountEmail;

  /// (Output)
  /// ID token obtained for the service account.
  final String? token;

  /// (Output)
  /// The approximate time until the token retrieved is valid.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? tokenExpireTime;

  AuthConfigDecryptedCredentialOidcToken({
    this.audience,
    this.serviceAccountEmail,
    this.token,
    this.tokenExpireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audienceValue = audience;
    if (audienceValue != null) {
      map['audience'] = audienceValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    final tokenExpireTimeValue = tokenExpireTime;
    if (tokenExpireTimeValue != null) {
      map['tokenExpireTime'] = tokenExpireTimeValue;
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialOidcToken.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOidcToken(
      audience: map['audience'] == null ? null : map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      token: map['token'] == null ? null : map['token'] as String,
      tokenExpireTime: map['tokenExpireTime'] == null
          ? null
          : map['tokenExpireTime'] as String,
    );
  }
}
