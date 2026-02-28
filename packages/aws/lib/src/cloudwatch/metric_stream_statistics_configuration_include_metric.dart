// ignore_for_file: unused_element, unnecessary_cast

class MetricStreamStatisticsConfigurationIncludeMetric {
  /// The name of the metric.
  final String metricName;
  final String namespace;

  /// Creates a new [MetricStreamStatisticsConfigurationIncludeMetric].
  /// [metricName] The name of the metric.
  /// [namespace] Required.
  MetricStreamStatisticsConfigurationIncludeMetric({
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricName'] = metricName;
    map['namespace'] = namespace;
    return map;
  }

  factory MetricStreamStatisticsConfigurationIncludeMetric.fromMap(
      Map<String, dynamic> map) {
    return MetricStreamStatisticsConfigurationIncludeMetric(
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
