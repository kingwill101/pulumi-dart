// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint {
  /// Interval in seconds at which metrics are published. Valid values: `10`, `30`, `60`, `120`, `180`, `240`, `300`. Defaults to `60`.
  final pulumi.Input<int?>? metricPublishFrequencyInSeconds;
  /// Path to the metrics endpoint. Must start with `/`. Maximum 256 characters.
  final pulumi.Input<String> metricsEndpointPath;

  /// Creates a new [InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint].
  /// [metricPublishFrequencyInSeconds] Interval in seconds at which metrics are published. Valid values: `10`, `30`, `60`, `120`, `180`, `240`, `300`. Defaults to `60`.
  /// [metricsEndpointPath] Path to the metrics endpoint. Must start with `/`. Maximum 256 characters.
  const InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint({
    this.metricPublishFrequencyInSeconds,
    required this.metricsEndpointPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricPublishFrequencyInSeconds': ?metricPublishFrequencyInSeconds,
      'metricsEndpointPath': metricsEndpointPath,
    };
  }

  factory InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationContainerContainerMetricsConfigMetricsEndpoint(
      metricPublishFrequencyInSeconds: (() { final guardedValue = map['metricPublishFrequencyInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      metricsEndpointPath: pulumi.Input.fromValue(map['metricsEndpointPath'] as String),
    );
  }
}
