// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties {
  /// Authorization code.
  final pulumi.Input<String> authorizationCode;
  /// Redirect URI for OAuth2 flow.
  final pulumi.Input<String> redirectUri;

  /// Creates a new [ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties].
  /// [authorizationCode] Authorization code.
  /// [redirectUri] Redirect URI for OAuth2 flow.
  const ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties({
    required this.authorizationCode,
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCode': authorizationCode,
      'redirectUri': redirectUri,
    };
  }

  factory ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthenticationConfigurationOauth2PropertiesAuthorizationCodeProperties(
      authorizationCode: pulumi.Input.fromValue(map['authorizationCode'] as String),
      redirectUri: pulumi.Input.fromValue(map['redirectUri'] as String),
    );
  }
}
