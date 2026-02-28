// ignore_for_file: unused_element, unnecessary_cast

/// A message representing a metric in the measurement.
class GoogleCloudMlV1MeasurementMetric {
  /// Metric name.
  final String metric;

  /// The value for this metric.
  final double value;

  /// Creates a new [GoogleCloudMlV1MeasurementMetric].
  /// [metric] Metric name.
  /// [value] The value for this metric.
  GoogleCloudMlV1MeasurementMetric({
    required this.metric,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metric'] = metric;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudMlV1MeasurementMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1MeasurementMetric(
      metric: map['metric'] as String,
      value: map['value'] as double,
    );
  }
}
