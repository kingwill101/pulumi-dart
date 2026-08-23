// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties {
  /// Authorization code URL required to redirect to the SAP Login Page to fetch the authorization code for OAuth type authentication.
  final pulumi.Input<String> authCodeUrl;
  /// OAuth scopes required for OAuth type authentication.
  final pulumi.Input<List<String>> oauthScopes;
  /// Token URL required to fetch access and refresh tokens using the authorization code, and to refresh an expired access token using the refresh token.
  final pulumi.Input<String> tokenUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties].
  /// [authCodeUrl] Authorization code URL required to redirect to the SAP Login Page to fetch the authorization code for OAuth type authentication.
  /// [oauthScopes] OAuth scopes required for OAuth type authentication.
  /// [tokenUrl] Token URL required to fetch access and refresh tokens using the authorization code, and to refresh an expired access token using the refresh token.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties({
    required this.authCodeUrl,
    required this.oauthScopes,
    required this.tokenUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCodeUrl': authCodeUrl,
      'oauthScopes': oauthScopes,
      'tokenUrl': tokenUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties(
      authCodeUrl: pulumi.Input.fromValue(map['authCodeUrl'] as String),
      oauthScopes: pulumi.Input.fromValue((map['oauthScopes'] as List).cast<String>()),
      tokenUrl: pulumi.Input.fromValue(map['tokenUrl'] as String),
    );
  }
}
