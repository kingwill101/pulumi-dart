// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig {
  /// VPC security group IDs.
  final List<String> securityGroupIds;

  /// IDs of the subnets in the VPC to which to connect the training job. Fields are documented below.
  final List<String> subnets;

  LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnets'] = subnets;
    return map;
  }

  factory LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
