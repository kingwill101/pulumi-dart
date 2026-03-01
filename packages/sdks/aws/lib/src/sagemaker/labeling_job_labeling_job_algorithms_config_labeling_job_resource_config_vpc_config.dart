// ignore_for_file: unused_element, unnecessary_cast


class LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig {
  /// VPC security group IDs.
  final List<String> securityGroupIds;
  /// IDs of the subnets in the VPC to which to connect the training job. Fields are documented below.
  final List<String> subnets;

  /// Creates a new [LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig].
  /// [securityGroupIds] VPC security group IDs.
  /// [subnets] IDs of the subnets in the VPC to which to connect the training job. Fields are documented below.
  LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig({
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
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}

