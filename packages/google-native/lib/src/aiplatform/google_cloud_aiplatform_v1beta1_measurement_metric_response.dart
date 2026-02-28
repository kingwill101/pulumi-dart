// ignore_for_file: unused_element, unnecessary_cast

/// A message representing a metric in the measurement.
class GoogleCloudAiplatformV1beta1MeasurementMetricResponse {
  /// The ID of the Metric. The Metric should be defined in StudySpec's Metrics.
  final String metricId;

  /// The value for this metric.
  final double value;

  /// Creates a new [GoogleCloudAiplatformV1beta1MeasurementMetricResponse].
  /// [metricId] The ID of the Metric. The Metric should be defined in StudySpec's Metrics.
  /// [value] The value for this metric.
  GoogleCloudAiplatformV1beta1MeasurementMetricResponse({
    required this.metricId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricId'] = metricId;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1MeasurementMetricResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1MeasurementMetricResponse(
      metricId: map['metricId'] as String,
      value: map['value'] as double,
    );
  }
}
