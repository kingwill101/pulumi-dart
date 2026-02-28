// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}

