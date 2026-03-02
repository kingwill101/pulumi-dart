// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties {
  /// The authorization code url required to redirect to SAP Login Page to fetch authorization code for OAuth type authentication.
  final pulumi.Input<String> authCodeUrl;
  /// The OAuth scopes required for OAuth type authentication.
  final pulumi.Input<List<String>> oauthScopes;
  final pulumi.Input<String> tokenUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties].
  /// [authCodeUrl] The authorization code url required to redirect to SAP Login Page to fetch authorization code for OAuth type authentication.
  /// [oauthScopes] The OAuth scopes required for OAuth type authentication.
  /// [tokenUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties({
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
      authCodeUrl: (map['authCodeUrl'] as String).input(),
      oauthScopes: ((map['oauthScopes'] as List).cast<String>()).input(),
      tokenUrl: (map['tokenUrl'] as String).input(),
    );
  }
}

