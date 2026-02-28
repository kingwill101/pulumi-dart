// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceUrl'] = instanceUrl;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDatadog(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}
