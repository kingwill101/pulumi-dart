// ignore_for_file: unused_element, unnecessary_cast

class ConfigBlockingFunctionsForwardInboundCredentials {
  /// Whether to pass the user's OAuth identity provider's access token.
  final bool? accessToken;

  /// Whether to pass the user's OIDC identity provider's ID token.
  final bool? idToken;

  /// Whether to pass the user's OAuth identity provider's refresh token.
  final bool? refreshToken;

  ConfigBlockingFunctionsForwardInboundCredentials({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    final idTokenValue = idToken;
    if (idTokenValue != null) {
      map['idToken'] = idTokenValue;
    }
    final refreshTokenValue = refreshToken;
    if (refreshTokenValue != null) {
      map['refreshToken'] = refreshTokenValue;
    }
    return map;
  }

  factory ConfigBlockingFunctionsForwardInboundCredentials.fromMap(
      Map<String, dynamic> map) {
    return ConfigBlockingFunctionsForwardInboundCredentials(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as bool,
      idToken: map['idToken'] == null ? null : map['idToken'] as bool,
      refreshToken:
          map['refreshToken'] == null ? null : map['refreshToken'] as bool,
    );
  }
}
