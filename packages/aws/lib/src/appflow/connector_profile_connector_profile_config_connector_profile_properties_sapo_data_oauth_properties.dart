// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties {
  /// The authorization code url required to redirect to SAP Login Page to fetch authorization code for OAuth type authentication.
  final String authCodeUrl;

  /// The OAuth scopes required for OAuth type authentication.
  final List<String> oauthScopes;
  final String tokenUrl;

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
    final map = <String, dynamic>{};
    map['authCodeUrl'] = authCodeUrl;
    map['oauthScopes'] = oauthScopes;
    map['tokenUrl'] = tokenUrl;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSapoDataOauthProperties(
      authCodeUrl: map['authCodeUrl'] as String,
      oauthScopes: (map['oauthScopes'] as List).cast<String>(),
      tokenUrl: map['tokenUrl'] as String,
    );
  }
}
