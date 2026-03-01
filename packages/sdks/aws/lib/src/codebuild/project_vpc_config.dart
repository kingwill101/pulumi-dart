// ignore_for_file: unused_element, unnecessary_cast


class ProjectVpcConfig {
  /// Security group IDs to assign to running builds.
  final List<String> securityGroupIds;
  /// Subnet IDs within which to run builds.
  final List<String> subnets;
  /// ID of the VPC within which to run builds.
  final String vpcId;

  /// Creates a new [ProjectVpcConfig].
  /// [securityGroupIds] Security group IDs to assign to running builds.
  /// [subnets] Subnet IDs within which to run builds.
  /// [vpcId] ID of the VPC within which to run builds.
  ProjectVpcConfig({
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

  factory ProjectVpcConfig.fromMap(Map<String, dynamic> map) {
    return ProjectVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

