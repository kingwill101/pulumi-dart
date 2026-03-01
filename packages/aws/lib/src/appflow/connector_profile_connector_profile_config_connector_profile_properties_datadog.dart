// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceUrl': instanceUrl};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}
