// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo {
  final String instanceUrl;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo].
  /// [instanceUrl] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instanceUrl': instanceUrl};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesMarketo(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}
