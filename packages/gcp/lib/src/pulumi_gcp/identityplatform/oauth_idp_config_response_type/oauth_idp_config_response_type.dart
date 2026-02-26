// ignore_for_file: unused_element, unnecessary_cast

class OauthIdpConfigResponseType {
  /// If true, authorization code is returned from IdP's authorization endpoint.
  final bool? code;

  /// If true, ID token is returned from IdP's authorization endpoint.
  final bool? idToken;

  OauthIdpConfigResponseType({
    this.code,
    this.idToken,
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
    return map;
  }

  factory OauthIdpConfigResponseType.fromMap(Map<String, dynamic> map) {
    return OauthIdpConfigResponseType(
      code: map['code'] == null ? null : map['code'] as bool,
      idToken: map['idToken'] == null ? null : map['idToken'] as bool,
    );
  }
}
