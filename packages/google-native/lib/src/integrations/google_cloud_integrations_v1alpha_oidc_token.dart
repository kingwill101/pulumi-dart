// ignore_for_file: unused_element, unnecessary_cast

/// OIDC Token
class GoogleCloudIntegrationsV1alphaOidcToken {
  /// Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  final String? audience;

  /// The service account email to be used as the identity for the token.
  final String? serviceAccountEmail;

  /// ID token obtained for the service account
  final String? token;

  /// The approximate time until the token retrieved is valid.
  final String? tokenExpireTime;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOidcToken].
  /// [audience] Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for.
  /// [serviceAccountEmail] The service account email to be used as the identity for the token.
  /// [token] ID token obtained for the service account
  /// [tokenExpireTime] The approximate time until the token retrieved is valid.
  GoogleCloudIntegrationsV1alphaOidcToken({
    this.audience,
    this.serviceAccountEmail,
    this.token,
    this.tokenExpireTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccountEmail': ?serviceAccountEmail,
      'token': ?token,
      'tokenExpireTime': ?tokenExpireTime,
    };
  }

  factory GoogleCloudIntegrationsV1alphaOidcToken.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaOidcToken(
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
