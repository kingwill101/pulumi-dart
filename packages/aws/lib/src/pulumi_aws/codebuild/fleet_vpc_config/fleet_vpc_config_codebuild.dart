// ignore_for_file: unused_element, unnecessary_cast

class FleetVpcConfigCodebuild {
  /// A list of one or more security groups IDs in your Amazon VPC.
  final List<String> securityGroupIds;

  /// A list of one or more subnet IDs in your Amazon VPC.
  final List<String> subnets;

  /// The ID of the Amazon VPC.
  final String vpcId;

  FleetVpcConfigCodebuild({
    required this.securityGroupIds,
    required this.subnets,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnets'] = subnets;
    map['vpcId'] = vpcId;
    return map;
  }

  factory FleetVpcConfigCodebuild.fromMap(Map<String, dynamic> map) {
    return FleetVpcConfigCodebuild(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
