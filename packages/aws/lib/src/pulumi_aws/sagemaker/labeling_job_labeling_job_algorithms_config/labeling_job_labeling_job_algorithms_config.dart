// ignore_for_file: unused_element, unnecessary_cast

import '../labeling_job_labeling_job_algorithms_config_labeling_job_resource_config/labeling_job_labeling_job_algorithms_config_labeling_job_resource_config.dart';

class LabelingJobLabelingJobAlgorithmsConfig {
  /// ARN of the final model used for auto-labeling.
  final String? initialActiveLearningModelArn;

  /// ARN of the algorithm used for auto-labeling.
  final String labelingJobAlgorithmSpecificationArn;

  /// Configuration information for the labeling job. Fields are documented below.
  final LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig?
      labelingJobResourceConfig;

  LabelingJobLabelingJobAlgorithmsConfig({
    this.initialActiveLearningModelArn,
    required this.labelingJobAlgorithmSpecificationArn,
    this.labelingJobResourceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final initialActiveLearningModelArnValue = initialActiveLearningModelArn;
    if (initialActiveLearningModelArnValue != null) {
      map['initialActiveLearningModelArn'] = initialActiveLearningModelArnValue;
    }
    map['labelingJobAlgorithmSpecificationArn'] =
        labelingJobAlgorithmSpecificationArn;
    final labelingJobResourceConfigValue = labelingJobResourceConfig;
    if (labelingJobResourceConfigValue != null) {
      map['labelingJobResourceConfig'] = labelingJobResourceConfigValue.toMap();
    }
    return map;
  }

  factory LabelingJobLabelingJobAlgorithmsConfig.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobLabelingJobAlgorithmsConfig(
      initialActiveLearningModelArn:
          map['initialActiveLearningModelArn'] == null
              ? null
              : map['initialActiveLearningModelArn'] as String,
      labelingJobAlgorithmSpecificationArn:
          map['labelingJobAlgorithmSpecificationArn'] as String,
      labelingJobResourceConfig: map['labelingJobResourceConfig'] == null
          ? null
          : LabelingJobLabelingJobAlgorithmsConfigLabelingJobResourceConfig
              .fromMap((map['labelingJobResourceConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
