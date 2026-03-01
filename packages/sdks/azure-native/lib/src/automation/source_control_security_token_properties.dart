// ignore_for_file: unused_element, unnecessary_cast


class SourceControlSecurityTokenProperties {
  /// The access token.
  final String? accessToken;
  /// The refresh token.
  final String? refreshToken;
  /// The token type. Must be either PersonalAccessToken or Oauth.
  final String? tokenType;

  /// Creates a new [SourceControlSecurityTokenProperties].
  /// [accessToken] The access token.
  /// [refreshToken] The refresh token.
  /// [tokenType] The token type. Must be either PersonalAccessToken or Oauth.
  SourceControlSecurityTokenProperties({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'refreshToken': ?refreshToken,
      'tokenType': ?tokenType,
    };
  }

  factory SourceControlSecurityTokenProperties.fromMap(Map<String, dynamic> map) {
    return SourceControlSecurityTokenProperties(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
      tokenType: map['tokenType'] == null ? null : map['tokenType'] as String,
    );
  }
}

