// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials {
  /// OAuth2 access token.
  final pulumi.Input<String>? accessToken;
  /// JWT token.
  final pulumi.Input<String>? jwtToken;
  /// OAuth2 refresh token.
  final pulumi.Input<String>? refreshToken;
  /// Client secret for user-managed client application.
  final pulumi.Input<String>? userManagedClientApplicationClientSecret;

  /// Creates a new [ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials].
  /// [accessToken] OAuth2 access token.
  /// [jwtToken] JWT token.
  /// [refreshToken] OAuth2 refresh token.
  /// [userManagedClientApplicationClientSecret] Client secret for user-managed client application.
  const ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials({
    this.accessToken,
    this.jwtToken,
    this.refreshToken,
    this.userManagedClientApplicationClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'jwtToken': ?jwtToken,
      'refreshToken': ?refreshToken,
      'userManagedClientApplicationClientSecret': ?userManagedClientApplicationClientSecret,
    };
  }

  factory ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthenticationConfigurationOauth2PropertiesOauth2Credentials(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jwtToken: (() { final guardedValue = map['jwtToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userManagedClientApplicationClientSecret: (() { final guardedValue = map['userManagedClientApplicationClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
