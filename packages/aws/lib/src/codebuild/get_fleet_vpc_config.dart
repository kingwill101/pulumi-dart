// ignore_for_file: unused_element, unnecessary_cast

class GetFleetVpcConfig {
  /// A list of one or more security groups IDs in your Amazon VPC.
  final List<String> securityGroupIds;

  /// A list of one or more subnet IDs in your Amazon VPC.
  final List<String> subnets;

  /// The ID of the Amazon VPC.
  final String vpcId;

  /// Creates a new [GetFleetVpcConfig].
  /// [securityGroupIds] A list of one or more security groups IDs in your Amazon VPC.
  /// [subnets] A list of one or more subnet IDs in your Amazon VPC.
  /// [vpcId] The ID of the Amazon VPC.
  GetFleetVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
      'vpcId': vpcId,
    };
  }

  factory GetFleetVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetFleetVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
