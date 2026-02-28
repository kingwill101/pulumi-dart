// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}

