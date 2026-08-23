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
  const SourceControlSecurityTokenProperties({
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
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
