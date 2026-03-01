// ignore_for_file: unused_element, unnecessary_cast


class SourceControlSecurity {
  /// The refresh token of specified rpeo.
  final String? refreshToken;
  /// The access token of specified repo.
  final String token;
  /// Specify the token type, possible values are `PersonalAccessToken` and `Oauth`.
  final String tokenType;

  /// Creates a new [SourceControlSecurity].
  /// [refreshToken] The refresh token of specified rpeo.
  /// [token] The access token of specified repo.
  /// [tokenType] Specify the token type, possible values are `PersonalAccessToken` and `Oauth`.
  SourceControlSecurity({
    this.refreshToken,
    required this.token,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshToken': ?refreshToken,
      'token': token,
      'tokenType': tokenType,
    };
  }

  factory SourceControlSecurity.fromMap(Map<String, dynamic> map) {
    return SourceControlSecurity(
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
      token: map['token'] as String,
      tokenType: map['tokenType'] as String,
    );
  }
}

