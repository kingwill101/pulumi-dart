// ignore_for_file: unused_element, unnecessary_cast

class PrivateConnectionVpcPeeringConfig {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// Fully qualified name of the VPC that Database Migration Service will peer to.
  /// Format: projects/{project}/global/{networks}/{name}
  final String vpcName;

  PrivateConnectionVpcPeeringConfig({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpcName'] = vpcName;
    return map;
  }

  factory PrivateConnectionVpcPeeringConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionVpcPeeringConfig(
      subnet: map['subnet'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}
