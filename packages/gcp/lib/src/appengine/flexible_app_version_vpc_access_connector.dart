// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionVpcAccessConnector {
  /// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
  final String name;

  /// Creates a new [FlexibleAppVersionVpcAccessConnector].
  /// [name] Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
  FlexibleAppVersionVpcAccessConnector({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory FlexibleAppVersionVpcAccessConnector.fromMap(
      Map<String, dynamic> map) {
    return FlexibleAppVersionVpcAccessConnector(
      name: map['name'] as String,
    );
  }
}
