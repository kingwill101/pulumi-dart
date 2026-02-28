// ignore_for_file: unused_element, unnecessary_cast

class PrivateConnectionVpcPeeringConfig {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// Fully qualified name of the VPC that Datastream will peer to.
  /// Format: projects/{project}/global/{networks}/{name}
  final String vpc;

  /// Creates a new [PrivateConnectionVpcPeeringConfig].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpc] Fully qualified name of the VPC that Datastream will peer to.
  PrivateConnectionVpcPeeringConfig({
    required this.subnet,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpc'] = vpc;
    return map;
  }

  factory PrivateConnectionVpcPeeringConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionVpcPeeringConfig(
      subnet: map['subnet'] as String,
      vpc: map['vpc'] as String,
    );
  }
}
