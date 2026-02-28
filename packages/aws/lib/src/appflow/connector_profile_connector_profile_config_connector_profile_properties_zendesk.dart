// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceUrl': instanceUrl,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesZendesk(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}

