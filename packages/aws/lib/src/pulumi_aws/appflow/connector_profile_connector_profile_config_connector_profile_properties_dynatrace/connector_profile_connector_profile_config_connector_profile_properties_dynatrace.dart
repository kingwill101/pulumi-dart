// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace {
  final String instanceUrl;

  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceUrl'] = instanceUrl;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesDynatrace(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}
