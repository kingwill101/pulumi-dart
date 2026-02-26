// ignore_for_file: unused_element, unnecessary_cast

/// The access token represents the authorization of a specific application to access specific parts of a user’s data.
class GoogleCloudIntegrationsV1alphaAccessToken {
  /// The access token encapsulating the security identity of a process or thread.
  final String? accessToken;

  /// The approximate time until the access token retrieved is valid.
  final String accessTokenExpireTime;

  /// If the access token will expire, use the refresh token to obtain another access token.
  final String? refreshToken;

  /// The approximate time until the refresh token retrieved is valid.
  final String? refreshTokenExpireTime;

  /// Only support "bearer" token in v1 as bearer token is the predominant type used with OAuth 2.0.
  final String? tokenType;

  GoogleCloudIntegrationsV1alphaAccessToken({
    this.accessToken,
    required this.accessTokenExpireTime,
    this.refreshToken,
    this.refreshTokenExpireTime,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    map['accessTokenExpireTime'] = accessTokenExpireTime;
    final refreshTokenValue = refreshToken;
    if (refreshTokenValue != null) {
      map['refreshToken'] = refreshTokenValue;
    }
    final refreshTokenExpireTimeValue = refreshTokenExpireTime;
    if (refreshTokenExpireTimeValue != null) {
      map['refreshTokenExpireTime'] = refreshTokenExpireTimeValue;
    }
    final tokenTypeValue = tokenType;
    if (tokenTypeValue != null) {
      map['tokenType'] = tokenTypeValue;
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaAccessToken.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAccessToken(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as String,
      accessTokenExpireTime: map['accessTokenExpireTime'] as String,
      refreshToken:
          map['refreshToken'] == null ? null : map['refreshToken'] as String,
      refreshTokenExpireTime: map['refreshTokenExpireTime'] == null
          ? null
          : map['refreshTokenExpireTime'] as String,
      tokenType: map['tokenType'] == null ? null : map['tokenType'] as String,
    );
  }
}
