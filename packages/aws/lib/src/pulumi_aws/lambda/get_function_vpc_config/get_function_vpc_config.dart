// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionVpcConfig {
  final bool ipv6AllowedForDualStack;

  /// List of security group IDs associated with the Lambda function.
  final List<String> securityGroupIds;

  /// List of subnet IDs associated with the Lambda function.
  final List<String> subnetIds;

  /// ID of the VPC.
  final String vpcId;

  GetFunctionVpcConfig({
    required this.ipv6AllowedForDualStack,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv6AllowedForDualStack'] = ipv6AllowedForDualStack;
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetFunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionVpcConfig(
      ipv6AllowedForDualStack: map['ipv6AllowedForDualStack'] as bool,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
