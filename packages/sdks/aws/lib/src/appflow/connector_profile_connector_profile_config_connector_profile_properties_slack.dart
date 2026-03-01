// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesSlack(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}

