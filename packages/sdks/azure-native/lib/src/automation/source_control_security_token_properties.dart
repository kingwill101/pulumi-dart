// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SourceControlSecurityTokenProperties {
  /// The access token.
  final pulumi.Input<String>? accessToken;
  /// The refresh token.
  final pulumi.Input<String>? refreshToken;
  /// The token type. Must be either PersonalAccessToken or Oauth.
  final pulumi.Input<String>? tokenType;

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
      accessToken: map['accessToken'] == null ? null : (map['accessToken'] as String).input(),
      refreshToken: map['refreshToken'] == null ? null : (map['refreshToken'] as String).input(),
      tokenType: map['tokenType'] == null ? null : (map['tokenType'] as String).input(),
    );
  }
}

