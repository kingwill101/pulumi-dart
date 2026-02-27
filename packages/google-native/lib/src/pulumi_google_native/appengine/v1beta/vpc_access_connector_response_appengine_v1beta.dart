// ignore_for_file: unused_element, unnecessary_cast

/// VPC access connector specification.
class VpcAccessConnectorResponseAppengineV1beta {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final String egressSetting;

  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final String name;

  VpcAccessConnectorResponseAppengineV1beta({
    required this.egressSetting,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['egressSetting'] = egressSetting;
    map['name'] = name;
    return map;
  }

  factory VpcAccessConnectorResponseAppengineV1beta.fromMap(
      Map<String, dynamic> map) {
    return VpcAccessConnectorResponseAppengineV1beta(
      egressSetting: map['egressSetting'] as String,
      name: map['name'] as String,
    );
  }
}
