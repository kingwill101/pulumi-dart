// ignore_for_file: unused_element, unnecessary_cast


class StandardAppVersionVpcAccessConnector {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final String? egressSetting;
  /// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
  final String name;

  /// Creates a new [StandardAppVersionVpcAccessConnector].
  /// [egressSetting] The egress setting for the connector, controlling what traffic is diverted through it.
  /// [name] Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
  StandardAppVersionVpcAccessConnector({
    this.egressSetting,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': ?egressSetting,
      'name': name,
    };
  }

  factory StandardAppVersionVpcAccessConnector.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionVpcAccessConnector(
      egressSetting: map['egressSetting'] == null ? null : map['egressSetting'] as String,
      name: map['name'] as String,
    );
  }
}

