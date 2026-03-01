// ignore_for_file: unused_element, unnecessary_cast

class ManagedUserPoolClientTokenValidityUnits {
  /// Time unit for the value in `access_token_validity` and defaults to `hours`.
  final String? accessToken;

  /// Time unit for the value in `id_token_validity`, and it defaults to `hours`.
  final String? idToken;

  /// Time unit for the value in `refresh_token_validity` and defaults to `days`.
  final String? refreshToken;

  /// Creates a new [ManagedUserPoolClientTokenValidityUnits].
  /// [accessToken] Time unit for the value in `access_token_validity` and defaults to `hours`.
  /// [idToken] Time unit for the value in `id_token_validity`, and it defaults to `hours`.
  /// [refreshToken] Time unit for the value in `refresh_token_validity` and defaults to `days`.
  ManagedUserPoolClientTokenValidityUnits({
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

  factory ManagedUserPoolClientTokenValidityUnits.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedUserPoolClientTokenValidityUnits(
      accessToken: map['accessToken'] == null
          ? null
          : map['accessToken'] as String,
      idToken: map['idToken'] == null ? null : map['idToken'] as String,
      refreshToken: map['refreshToken'] == null
          ? null
          : map['refreshToken'] as String,
    );
  }
}
