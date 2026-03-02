// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelVpcConfig {
  /// List of security group IDs you want to be applied to your training job or model. Specify the security groups for the VPC that is specified in the Subnets field.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs in the VPC to which you want to connect your training job or model.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [ModelVpcConfig].
  /// [securityGroupIds] List of security group IDs you want to be applied to your training job or model. Specify the security groups for the VPC that is specified in the Subnets field.
  /// [subnets] List of subnet IDs in the VPC to which you want to connect your training job or model.
  ModelVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory ModelVpcConfig.fromMap(Map<String, dynamic> map) {
    return ModelVpcConfig(
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

