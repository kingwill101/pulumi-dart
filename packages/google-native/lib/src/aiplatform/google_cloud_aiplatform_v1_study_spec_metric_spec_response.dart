// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_study_spec_metric_spec_safety_metric_config_response.dart';

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1StudySpecMetricSpecResponse {
  /// The optimization goal of the metric.
  final String goal;

  /// The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  final String metricId;

  /// Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  final GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfigResponse
  safetyConfig;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecMetricSpecResponse].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces and must be unique amongst all MetricSpecs.
  /// [safetyConfig] Used for safe search. In the case, the metric will be a safety metric. You must provide a separate metric for objective metric.
  GoogleCloudAiplatformV1StudySpecMetricSpecResponse({
    required this.goal,
    required this.metricId,
    required this.safetyConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': goal,
      'metricId': metricId,
      'safetyConfig': safetyConfig.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1StudySpecMetricSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1StudySpecMetricSpecResponse(
      goal: map['goal'] as String,
      metricId: map['metricId'] as String,
      safetyConfig:
          GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfigResponse.fromMap(
            (map['safetyConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
