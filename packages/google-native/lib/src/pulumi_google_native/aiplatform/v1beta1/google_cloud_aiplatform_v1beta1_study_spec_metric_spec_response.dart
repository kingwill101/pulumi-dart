// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_study_spec_metric_spec_safety_metric_config_response.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse {
  /// The optimization goal of the metric.
  final String goal;

  /// The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  final String metricId;

  /// Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  final GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse
      safetyConfig;

  GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse({
    required this.goal,
    required this.metricId,
    required this.safetyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['goal'] = goal;
    map['metricId'] = metricId;
    map['safetyConfig'] = safetyConfig.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse(
      goal: map['goal'] as String,
      metricId: map['metricId'] as String,
      safetyConfig:
          GoogleCloudAiplatformV1beta1StudySpecMetricSpecSafetyMetricConfigResponse
              .fromMap((map['safetyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
