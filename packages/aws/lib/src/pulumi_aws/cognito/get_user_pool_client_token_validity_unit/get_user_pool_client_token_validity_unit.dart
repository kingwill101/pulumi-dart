// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolClientTokenValidityUnit {
  /// (Optional) Time unit in for the value in `access_token_validity`, defaults to `hours`.
  final String accessToken;

  /// (Optional) Time unit in for the value in `id_token_validity`, defaults to `hours`.
  final String idToken;

  /// (Optional) Time unit in for the value in `refresh_token_validity`, defaults to `days`.
  final String refreshToken;

  GetUserPoolClientTokenValidityUnit({
    required this.accessToken,
    required this.idToken,
    required this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessToken'] = accessToken;
    map['idToken'] = idToken;
    map['refreshToken'] = refreshToken;
    return map;
  }

  factory GetUserPoolClientTokenValidityUnit.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientTokenValidityUnit(
      accessToken: map['accessToken'] as String,
      idToken: map['idToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }
}
