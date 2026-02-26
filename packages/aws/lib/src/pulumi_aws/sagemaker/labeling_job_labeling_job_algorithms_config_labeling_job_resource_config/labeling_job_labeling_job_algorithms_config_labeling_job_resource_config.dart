// ignore_for_file: unused_element, unnecessary_cast

import '../labeling_job_labeling_job_algorithms_config_labeling_job_resource_config_vpc_config/labeling_job_labeling_job_algorithms_config_labeling_job_resource_config_vpc_config.dart';

class LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig {
  /// ID of the key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the training and inference jobs used for automated data labeling.
  final String? volumeKmsKeyId;

  /// VPC that SageMaker jobs, hosted models, and compute resources have access to. Fields are documented below.
  final LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig?
      vpcConfig;

  LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig({
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final volumeKmsKeyIdValue = volumeKmsKeyId;
    if (volumeKmsKeyIdValue != null) {
      map['volumeKmsKeyId'] = volumeKmsKeyIdValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = vpcConfigValue.toMap();
    }
    return map;
  }

  factory LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig(
      volumeKmsKeyId: map['volumeKmsKeyId'] == null
          ? null
          : map['volumeKmsKeyId'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig
              .fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
