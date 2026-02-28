// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_ml_v1_study_config_metric_spec_goal.dart';

/// Represents a metric to optimize.
class GoogleCloudMlV1StudyConfigMetricSpec {
  /// The optimization goal of the metric.
  final GoogleCloudMlV1StudyConfigMetricSpecGoal goal;

  /// The name of the metric.
  final String metric;

  /// Creates a new [GoogleCloudMlV1StudyConfigMetricSpec].
  /// [goal] The optimization goal of the metric.
  /// [metric] The name of the metric.
  GoogleCloudMlV1StudyConfigMetricSpec({
    required this.goal,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['goal'] = goal.value;
    map['metric'] = metric;
    return map;
  }

  factory GoogleCloudMlV1StudyConfigMetricSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigMetricSpec(
      goal: GoogleCloudMlV1StudyConfigMetricSpecGoal.fromValue(
          map['goal'] as String),
      metric: map['metric'] as String,
    );
  }
}
