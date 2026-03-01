// ignore_for_file: unused_element, unnecessary_cast

import 'labeling_job_labeling_job_algorithms_config_labeling_job_resource_config.dart';

class LabelingJobLabelingJobAlgorithmsConfig {
  /// ARN of the final model used for auto-labeling.
  final String? initialActiveLearningModelArn;

  /// ARN of the algorithm used for auto-labeling.
  final String labelingJobAlgorithmSpecificationArn;

  /// Configuration information for the labeling job. Fields are documented below.
  final LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig?
  labelingJobResourceConfig;

  /// Creates a new [LabelingJobLabelingJobAlgorithmsConfig].
  /// [initialActiveLearningModelArn] ARN of the final model used for auto-labeling.
  /// [labelingJobAlgorithmSpecificationArn] ARN of the algorithm used for auto-labeling.
  /// [labelingJobResourceConfig] Configuration information for the labeling job. Fields are documented below.
  LabelingJobLabelingJobAlgorithmsConfig({
    this.initialActiveLearningModelArn,
    required this.labelingJobAlgorithmSpecificationArn,
    this.labelingJobResourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialActiveLearningModelArn': ?initialActiveLearningModelArn,
      'labelingJobAlgorithmSpecificationArn':
          labelingJobAlgorithmSpecificationArn,
      'labelingJobResourceConfig': ?labelingJobResourceConfig == null
          ? null
          : labelingJobResourceConfig!.toMap(),
    };
  }

  factory LabelingJobLabelingJobAlgorithmsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return LabelingJobLabelingJobAlgorithmsConfig(
      initialActiveLearningModelArn:
          map['initialActiveLearningModelArn'] == null
          ? null
          : map['initialActiveLearningModelArn'] as String,
      labelingJobAlgorithmSpecificationArn:
          map['labelingJobAlgorithmSpecificationArn'] as String,
      labelingJobResourceConfig: map['labelingJobResourceConfig'] == null
          ? null
          : LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig.fromMap(
              (map['labelingJobResourceConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
