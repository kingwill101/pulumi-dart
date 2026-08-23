// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig {
  /// VPC security group IDs.
  final pulumi.Input<List<String>> securityGroupIds;
  /// IDs of the subnets in the VPC to which to connect the training job. Fields are documented below.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig].
  /// [securityGroupIds] VPC security group IDs.
  /// [subnets] IDs of the subnets in the VPC to which to connect the training job. Fields are documented below.
  const LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
