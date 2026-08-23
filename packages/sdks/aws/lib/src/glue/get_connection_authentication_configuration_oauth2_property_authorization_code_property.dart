// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty {
  /// Authorization code used to obtain an access token.
  final pulumi.Input<String> authorizationCode;
  /// Redirect URI used in the authorization code request.
  final pulumi.Input<String> redirectUri;

  /// Creates a new [GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty].
  /// [authorizationCode] Authorization code used to obtain an access token.
  /// [redirectUri] Redirect URI used in the authorization code request.
  const GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty({
    required this.authorizationCode,
    required this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationCode': authorizationCode,
      'redirectUri': redirectUri,
    };
  }

  factory GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty.fromMap(Map<String, dynamic> map) {
    return GetConnectionAuthenticationConfigurationOauth2PropertyAuthorizationCodeProperty(
      authorizationCode: pulumi.Input.fromValue(map['authorizationCode'] as String),
      redirectUri: pulumi.Input.fromValue(map['redirectUri'] as String),
    );
  }
}
