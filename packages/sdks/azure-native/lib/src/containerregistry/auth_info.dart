// ignore_for_file: unused_element, unnecessary_cast


/// The authorization properties for accessing the source code repository.
class AuthInfo {
  /// Time in seconds that the token remains valid
  final int? expiresIn;
  /// The refresh token used to refresh the access token.
  final String? refreshToken;
  /// The scope of the access token.
  final String? scope;
  /// The access token used to access the source control provider.
  final String token;
  /// The type of Auth token.
  final String tokenType;

  /// Creates a new [AuthInfo].
  /// [expiresIn] Time in seconds that the token remains valid
  /// [refreshToken] The refresh token used to refresh the access token.
  /// [scope] The scope of the access token.
  /// [token] The access token used to access the source control provider.
  /// [tokenType] The type of Auth token.
  AuthInfo({
    this.expiresIn,
    this.refreshToken,
    this.scope,
    required this.token,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiresIn': ?expiresIn,
      'refreshToken': ?refreshToken,
      'scope': ?scope,
      'token': token,
      'tokenType': tokenType,
    };
  }

  factory AuthInfo.fromMap(Map<String, dynamic> map) {
    return AuthInfo(
      expiresIn: map['expiresIn'] == null ? null : map['expiresIn'] as int,
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      token: map['token'] as String,
      tokenType: map['tokenType'] as String,
    );
  }
}

