// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionVpcConfig {
  /// Security group ID
  final String? securityGroupId;
  /// VPC network ID
  final String? vpcId;
  /// Switch List
  final List<String>? vswitchIds;

  /// Creates a new [V3FunctionVpcConfig].
  /// [securityGroupId] Security group ID
  /// [vpcId] VPC network ID
  /// [vswitchIds] Switch List
  V3FunctionVpcConfig({
    this.securityGroupId,
    this.vpcId,
    this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': ?securityGroupId,
      'vpcId': ?vpcId,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory V3FunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionVpcConfig(
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchIds: map['vswitchIds'] == null ? null : (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

