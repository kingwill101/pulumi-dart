// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionVpcConfig {
  /// Security group IDs.
  final pulumi.Input<List<String>> securityGroupIds;
  /// Subnet IDs.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionVpcConfig].
  /// [securityGroupIds] Security group IDs.
  /// [subnets] Subnet IDs.
  const HyperParameterTuningJobTrainingJobDefinitionVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionVpcConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
