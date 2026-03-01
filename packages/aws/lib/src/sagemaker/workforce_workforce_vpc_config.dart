// ignore_for_file: unused_element, unnecessary_cast

class WorkforceWorkforceVpcConfig {
  /// The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet.
  final List<String>? securityGroupIds;

  /// The ID of the subnets in the VPC that you want to connect.
  final List<String>? subnets;

  /// The IDs for the VPC service endpoints of your VPC workforce.
  final String? vpcEndpointId;

  /// The ID of the VPC that the workforce uses for communication.
  final String? vpcId;

  /// Creates a new [WorkforceWorkforceVpcConfig].
  /// [securityGroupIds] The VPC security group IDs. The security groups must be for the same VPC as specified in the subnet.
  /// [subnets] The ID of the subnets in the VPC that you want to connect.
  /// [vpcEndpointId] The IDs for the VPC service endpoints of your VPC workforce.
  /// [vpcId] The ID of the VPC that the workforce uses for communication.
  WorkforceWorkforceVpcConfig({
    this.securityGroupIds,
    this.subnets,
    this.vpcEndpointId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': ?securityGroupIds,
      'subnets': ?subnets,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcId': ?vpcId,
    };
  }

  factory WorkforceWorkforceVpcConfig.fromMap(Map<String, dynamic> map) {
    return WorkforceWorkforceVpcConfig(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnets: map['subnets'] == null
          ? null
          : (map['subnets'] as List).cast<String>(),
      vpcEndpointId: map['vpcEndpointId'] == null
          ? null
          : map['vpcEndpointId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
