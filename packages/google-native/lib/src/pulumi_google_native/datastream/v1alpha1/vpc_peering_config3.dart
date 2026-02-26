// ignore_for_file: unused_element, unnecessary_cast

/// The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.
class VpcPeeringConfig3 {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// fully qualified name of the VPC Datastream will peer to.
  final String vpcName;

  VpcPeeringConfig3({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpcName'] = vpcName;
    return map;
  }

  factory VpcPeeringConfig3.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConfig3(
      subnet: map['subnet'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}
