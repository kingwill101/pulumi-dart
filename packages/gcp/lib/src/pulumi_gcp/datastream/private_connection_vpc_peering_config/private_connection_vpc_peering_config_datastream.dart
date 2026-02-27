// ignore_for_file: unused_element, unnecessary_cast

class PrivateConnectionVpcPeeringConfigDatastream {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// Fully qualified name of the VPC that Datastream will peer to.
  /// Format: projects/{project}/global/{networks}/{name}
  final String vpc;

  PrivateConnectionVpcPeeringConfigDatastream({
    required this.subnet,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpc'] = vpc;
    return map;
  }

  factory PrivateConnectionVpcPeeringConfigDatastream.fromMap(
      Map<String, dynamic> map) {
    return PrivateConnectionVpcPeeringConfigDatastream(
      subnet: map['subnet'] as String,
      vpc: map['vpc'] as String,
    );
  }
}
