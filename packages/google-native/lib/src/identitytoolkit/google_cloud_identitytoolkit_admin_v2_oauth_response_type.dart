// ignore_for_file: unused_element, unnecessary_cast

/// The response type to request for in the OAuth authorization flow. You can set either `id_token` or `code` to true, but not both. Setting both types to be simultaneously true (`{code: true, id_token: true}`) is not yet supported. See https://openid.net/specs/openid-connect-core-1_0.html#Authentication for a mapping of response type to OAuth 2.0 flow.
class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  final bool? code;

  /// If true, ID token is returned from IdP's authorization endpoint.
  final bool? idToken;

  /// Do not use. The `token` response type is not supported at the moment.
  final bool? token;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2OAuthResponseType].
  /// [code] If true, authorization code is returned from IdP's authorization endpoint.
  /// [idToken] If true, ID token is returned from IdP's authorization endpoint.
  /// [token] Do not use. The `token` response type is not supported at the moment.
  GoogleCloudIdentitytoolkitAdminV2OAuthResponseType({
    this.code,
    this.idToken,
    this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final idTokenValue = idToken;
    if (idTokenValue != null) {
      map['idToken'] = idTokenValue;
    }
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2OAuthResponseType.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2OAuthResponseType(
      code: map['code'] == null ? null : map['code'] as bool,
      idToken: map['idToken'] == null ? null : map['idToken'] as bool,
      token: map['token'] == null ? null : map['token'] as bool,
    );
  }
}
