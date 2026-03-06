// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionNetworkConfigVpcConfig {
  /// The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the `subnets` field.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The ID of the subnets in the VPC to which you want to connect your training job or model.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [DataQualityJobDefinitionNetworkConfigVpcConfig].
  /// [securityGroupIds] The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the `subnets` field.
  /// [subnets] The ID of the subnets in the VPC to which you want to connect your training job or model.
  const DataQualityJobDefinitionNetworkConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory DataQualityJobDefinitionNetworkConfigVpcConfig.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionNetworkConfigVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}

