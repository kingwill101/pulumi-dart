// ignore_for_file: unused_element, unnecessary_cast

/// VPC access connector specification.
class VpcAccessConnectorResponse2 {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final String egressSetting;

  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final String name;

  VpcAccessConnectorResponse2({
    required this.egressSetting,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressSetting'] = egressSetting;
    map['name'] = name;
    return map;
  }

  factory VpcAccessConnectorResponse2.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnectorResponse2(
      egressSetting: map['egressSetting'] as String,
      name: map['name'] as String,
    );
  }
}
