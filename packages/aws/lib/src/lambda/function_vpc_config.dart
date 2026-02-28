// ignore_for_file: unused_element, unnecessary_cast

class FunctionVpcConfig {
  /// Whether to allow outbound IPv6 traffic on VPC functions connected to dual-stack subnets. Default: `false`.
  final bool? ipv6AllowedForDualStack;

  /// List of security group IDs associated with the Lambda function.
  final List<String> securityGroupIds;

  /// List of subnet IDs associated with the Lambda function.
  final List<String> subnetIds;

  /// ID of the VPC.
  final String? vpcId;

  /// Creates a new [FunctionVpcConfig].
  /// [ipv6AllowedForDualStack] Whether to allow outbound IPv6 traffic on VPC functions connected to dual-stack subnets. Default: `false`.
  /// [securityGroupIds] List of security group IDs associated with the Lambda function.
  /// [subnetIds] List of subnet IDs associated with the Lambda function.
  /// [vpcId] ID of the VPC.
  FunctionVpcConfig({
    this.ipv6AllowedForDualStack,
    required this.securityGroupIds,
    required this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipv6AllowedForDualStackValue = ipv6AllowedForDualStack;
    if (ipv6AllowedForDualStackValue != null) {
      map['ipv6AllowedForDualStack'] = ipv6AllowedForDualStackValue;
    }
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory FunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return FunctionVpcConfig(
      ipv6AllowedForDualStack: map['ipv6AllowedForDualStack'] == null
          ? null
          : map['ipv6AllowedForDualStack'] as bool,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
