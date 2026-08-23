// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a metric in the destination AMW account.
class MetricResponse {
  /// The name of the metric.
  final pulumi.Input<String> metricName;
  /// The namespace of the metric.
  final pulumi.Input<String> metricNamespace;

  /// Creates a new [MetricResponse].
  /// [metricName] The name of the metric.
  /// [metricNamespace] The namespace of the metric.
  const MetricResponse({
    required this.metricName,
    required this.metricNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'metricNamespace': metricNamespace,
    };
  }

  factory MetricResponse.fromMap(Map<String, dynamic> map) {
    return MetricResponse(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: pulumi.Input.fromValue(map['metricNamespace'] as String),
    );
  }
}
