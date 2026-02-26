// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus {
  final String instanceUrl;

  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus({
    required this.instanceUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceUrl'] = instanceUrl;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesInforNexus(
      instanceUrl: map['instanceUrl'] as String,
    );
  }
}
