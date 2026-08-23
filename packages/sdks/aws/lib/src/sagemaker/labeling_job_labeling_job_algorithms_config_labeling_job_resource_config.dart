// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_labeling_job_algorithms_config_labeling_job_resource_config_vpc_config.dart';

class LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig {
  /// ID of the key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the training and inference jobs used for automated data labeling.
  final pulumi.Input<String>? volumeKmsKeyId;
  /// VPC that SageMaker jobs, hosted models, and compute resources have access to. Fields are documented below.
  final pulumi.Input<LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig>? vpcConfig;

  /// Creates a new [LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig].
  /// [volumeKmsKeyId] ID of the key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the training and inference jobs used for automated data labeling.
  /// [vpcConfig] VPC that SageMaker jobs, hosted models, and compute resources have access to. Fields are documented below.
  const LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig({
    this.volumeKmsKeyId,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeKmsKeyId': ?volumeKmsKeyId,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig(
      volumeKmsKeyId: (() { final guardedValue = map['volumeKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfigVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
