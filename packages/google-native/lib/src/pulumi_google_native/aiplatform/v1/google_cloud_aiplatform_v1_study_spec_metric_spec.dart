// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_study_spec_metric_spec_goal.dart';
import 'google_cloud_aiplatform_v1_study_spec_metric_spec_safety_metric_config.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1StudySpecMetricSpec {
  /// The optimization goal of the metric.
  final GoogleCloudAiplatformV1StudySpecMetricSpecGoal goal;

  /// The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  final String metricId;

  /// Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  final GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig?
      safetyConfig;

  GoogleCloudAiplatformV1StudySpecMetricSpec({
    required this.goal,
    required this.metricId,
    this.safetyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['goal'] = goal.value;
    map['metricId'] = metricId;
    final safetyConfigValue = safetyConfig;
    if (safetyConfigValue != null) {
      map['safetyConfig'] = safetyConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecMetricSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecMetricSpec(
      goal: GoogleCloudAiplatformV1StudySpecMetricSpecGoal.fromValue(
          map['goal'] as String),
      metricId: map['metricId'] as String,
      safetyConfig: map['safetyConfig'] == null
          ? null
          : GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig
              .fromMap((map['safetyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
