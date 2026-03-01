// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceUrl': instanceUrl};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesServiceNow(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}
