// ignore_for_file: unused_element, unnecessary_cast

/// Represents a metric to optimize.
class GoogleCloudMlV1StudyConfigMetricSpecResponse {
  /// The optimization goal of the metric.
  final String goal;

  /// The name of the metric.
  final String metric;

  /// Creates a new [GoogleCloudMlV1StudyConfigMetricSpecResponse].
  /// [goal] The optimization goal of the metric.
  /// [metric] The name of the metric.
  GoogleCloudMlV1StudyConfigMetricSpecResponse({
    required this.goal,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'goal': goal, 'metric': metric};
  }

  factory GoogleCloudMlV1StudyConfigMetricSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1StudyConfigMetricSpecResponse(
      goal: map['goal'] as String,
      metric: map['metric'] as String,
    );
  }
}
