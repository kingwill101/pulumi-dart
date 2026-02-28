// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_nas_job_spec_multi_trial_algorithm_spec_metric_spec_goal.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec {
  /// The optimization goal of the metric.
  final GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal
      goal;

  /// The ID of the metric. Must not contain whitespaces.
  final String metricId;

  /// Creates a new [GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces.
  GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec({
    required this.goal,
    required this.metricId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['goal'] = goal.value;
    map['metricId'] = metricId;
    return map;
  }

  factory GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec(
      goal:
          GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal
              .fromValue(map['goal'] as String),
      metricId: map['metricId'] as String,
    );
  }
}
