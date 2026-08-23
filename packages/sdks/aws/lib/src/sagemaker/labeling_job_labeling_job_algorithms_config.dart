// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_labeling_job_algorithms_config_labeling_job_resource_config.dart';

class LabelingJobLabelingJobAlgorithmsConfig {
  /// ARN of the final model used for auto-labeling.
  final pulumi.Input<String>? initialActiveLearningModelArn;
  /// ARN of the algorithm used for auto-labeling.
  final pulumi.Input<String> labelingJobAlgorithmSpecificationArn;
  /// Configuration information for the labeling job. Fields are documented below.
  final pulumi.Input<LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig>? labelingJobResourceConfig;

  /// Creates a new [LabelingJobLabelingJobAlgorithmsConfig].
  /// [initialActiveLearningModelArn] ARN of the final model used for auto-labeling.
  /// [labelingJobAlgorithmSpecificationArn] ARN of the algorithm used for auto-labeling.
  /// [labelingJobResourceConfig] Configuration information for the labeling job. Fields are documented below.
  const LabelingJobLabelingJobAlgorithmsConfig({
    this.initialActiveLearningModelArn,
    required this.labelingJobAlgorithmSpecificationArn,
    this.labelingJobResourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialActiveLearningModelArn': ?initialActiveLearningModelArn,
      'labelingJobAlgorithmSpecificationArn': labelingJobAlgorithmSpecificationArn,
      'labelingJobResourceConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig, Map<String, dynamic>>(labelingJobResourceConfig, (value) => value.toMap()),
    };
  }

  factory LabelingJobLabelingJobAlgorithmsConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobLabelingJobAlgorithmsConfig(
      initialActiveLearningModelArn: (() { final guardedValue = map['initialActiveLearningModelArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelingJobAlgorithmSpecificationArn: pulumi.Input.fromValue(map['labelingJobAlgorithmSpecificationArn'] as String),
      labelingJobResourceConfig: (() { final guardedValue = map['labelingJobResourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
