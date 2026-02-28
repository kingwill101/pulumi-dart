// ignore_for_file: unused_element, unnecessary_cast

/// The VPC peering configuration is used to create VPC peering with the consumer's VPC.
class VpcPeeringConfigResponse {
  /// A free subnet for peering. (CIDR of /29)
  final String subnet;

  /// Fully qualified name of the VPC that Database Migration Service will peer to.
  final String vpcName;

  /// Creates a new [VpcPeeringConfigResponse].
  /// [subnet] A free subnet for peering. (CIDR of /29)
  /// [vpcName] Fully qualified name of the VPC that Database Migration Service will peer to.
  VpcPeeringConfigResponse({
    required this.subnet,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subnet'] = subnet;
    map['vpcName'] = vpcName;
    return map;
  }

  factory VpcPeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConfigResponse(
      subnet: map['subnet'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}
