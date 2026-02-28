// ignore_for_file: unused_element, unnecessary_cast

class ModelVpcConfig {
  /// List of security group IDs you want to be applied to your training job or model. Specify the security groups for the VPC that is specified in the Subnets field.
  final List<String> securityGroupIds;

  /// List of subnet IDs in the VPC to which you want to connect your training job or model.
  final List<String> subnets;

  /// Creates a new [ModelVpcConfig].
  /// [securityGroupIds] List of security group IDs you want to be applied to your training job or model. Specify the security groups for the VPC that is specified in the Subnets field.
  /// [subnets] List of subnet IDs in the VPC to which you want to connect your training job or model.
  ModelVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnets'] = subnets;
    return map;
  }

  factory ModelVpcConfig.fromMap(Map<String, dynamic> map) {
    return ModelVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
