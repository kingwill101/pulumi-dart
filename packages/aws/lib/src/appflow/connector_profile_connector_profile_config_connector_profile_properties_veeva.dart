// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesVeeva(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}

