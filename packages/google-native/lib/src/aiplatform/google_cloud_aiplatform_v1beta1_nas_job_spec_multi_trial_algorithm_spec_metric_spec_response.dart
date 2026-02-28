// ignore_for_file: unused_element, unnecessary_cast

/// Represents a metric to optimize.
class GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse {
  /// The optimization goal of the metric.
  final String goal;

  /// The ID of the metric. Must not contain whitespaces.
  final String metricId;

  /// Creates a new [GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse].
  /// [goal] The optimization goal of the metric.
  /// [metricId] The ID of the metric. Must not contain whitespaces.
  GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse({
    required this.goal,
    required this.metricId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['goal'] = goal;
    map['metricId'] = metricId;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecResponse(
      goal: map['goal'] as String,
      metricId: map['metricId'] as String,
    );
  }
}
