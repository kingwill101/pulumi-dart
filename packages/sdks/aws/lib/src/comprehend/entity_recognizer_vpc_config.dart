// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityRecognizerVpcConfig {
  /// List of security group IDs.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of VPC subnets.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [EntityRecognizerVpcConfig].
  /// [securityGroupIds] List of security group IDs.
  /// [subnets] List of VPC subnets.
  const EntityRecognizerVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory EntityRecognizerVpcConfig.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}

