// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricStreamStatisticsConfigurationIncludeMetric {
  /// The name of the metric.
  final pulumi.Input<String> metricName;
  final pulumi.Input<String> namespace;

  /// Creates a new [MetricStreamStatisticsConfigurationIncludeMetric].
  /// [metricName] The name of the metric.
  /// [namespace] Required.
  const MetricStreamStatisticsConfigurationIncludeMetric({
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'namespace': namespace,
    };
  }

  factory MetricStreamStatisticsConfigurationIncludeMetric.fromMap(Map<String, dynamic> map) {
    return MetricStreamStatisticsConfigurationIncludeMetric(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}

