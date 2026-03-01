// ignore_for_file: unused_element, unnecessary_cast


class UserPoolClientTokenValidityUnits {
  /// Time unit in for the value in `access_token_validity`, defaults to `hours`.
  final String? accessToken;
  /// Time unit in for the value in `id_token_validity`, defaults to `hours`.
  final String? idToken;
  /// Time unit in for the value in `refresh_token_validity`, defaults to `days`.
  final String? refreshToken;

  /// Creates a new [UserPoolClientTokenValidityUnits].
  /// [accessToken] Time unit in for the value in `access_token_validity`, defaults to `hours`.
  /// [idToken] Time unit in for the value in `id_token_validity`, defaults to `hours`.
  /// [refreshToken] Time unit in for the value in `refresh_token_validity`, defaults to `days`.
  UserPoolClientTokenValidityUnits({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'idToken': ?idToken,
      'refreshToken': ?refreshToken,
    };
  }

  factory UserPoolClientTokenValidityUnits.fromMap(Map<String, dynamic> map) {
    return UserPoolClientTokenValidityUnits(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      idToken: map['idToken'] == null ? null : map['idToken'] as String,
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
    );
  }
}

