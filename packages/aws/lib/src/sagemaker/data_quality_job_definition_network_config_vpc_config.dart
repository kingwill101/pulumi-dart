// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionNetworkConfigVpcConfig {
  /// The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the `subnets` field.
  final List<String> securityGroupIds;

  /// The ID of the subnets in the VPC to which you want to connect your training job or model.
  final List<String> subnets;

  /// Creates a new [DataQualityJobDefinitionNetworkConfigVpcConfig].
  /// [securityGroupIds] The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the `subnets` field.
  /// [subnets] The ID of the subnets in the VPC to which you want to connect your training job or model.
  DataQualityJobDefinitionNetworkConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory DataQualityJobDefinitionNetworkConfigVpcConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataQualityJobDefinitionNetworkConfigVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
