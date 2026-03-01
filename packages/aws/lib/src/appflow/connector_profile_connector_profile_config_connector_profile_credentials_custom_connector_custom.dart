// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom {
  /// A map that holds custom authentication credentials.
  final Map<String, String>? credentialsMap;

  /// The custom authentication type that the connector uses.
  final String customAuthenticationType;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom].
  /// [credentialsMap] A map that holds custom authentication credentials.
  /// [customAuthenticationType] The custom authentication type that the connector uses.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom({
    this.credentialsMap,
    required this.customAuthenticationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsMap': ?credentialsMap,
      'customAuthenticationType': customAuthenticationType,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorCustom(
      credentialsMap: map['credentialsMap'] == null
          ? null
          : (map['credentialsMap'] as Map).cast<String, String>(),
      customAuthenticationType: map['customAuthenticationType'] as String,
    );
  }
}
