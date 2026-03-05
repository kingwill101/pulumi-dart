// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricAlarmMetricQueryMetric {
  /// The dimensions for this metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final pulumi.Input<Map<String, String>>? dimensions;
  /// The name for this metric.
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final pulumi.Input<String> metricName;
  /// The namespace for this metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final pulumi.Input<String>? namespace;
  /// Granularity in seconds of returned data points.
  /// For metrics with regular resolution, valid values are any multiple of `60`.
  /// For high-resolution metrics, valid values are `1`, `5`, `10`, `20`, `30`, or any multiple of `60`.
  final pulumi.Input<int> period;
  /// The statistic to apply to this metric.
  /// See docs for [supported statistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html).
  final pulumi.Input<String> stat;
  /// The unit for this metric.
  final pulumi.Input<String>? unit;

  /// Creates a new [MetricAlarmMetricQueryMetric].
  /// [dimensions] The dimensions for this metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  /// [metricName] The name for this metric.
  /// [namespace] The namespace for this metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// [period] Granularity in seconds of returned data points.
  /// [stat] The statistic to apply to this metric.
  /// [unit] The unit for this metric.
  MetricAlarmMetricQueryMetric({
    this.dimensions,
    required this.metricName,
    this.namespace,
    required this.period,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'metricName': metricName,
      'namespace': ?namespace,
      'period': period,
      'stat': stat,
      'unit': ?unit,
    };
  }

  factory MetricAlarmMetricQueryMetric.fromMap(Map<String, dynamic> map) {
    return MetricAlarmMetricQueryMetric(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: pulumi.Input.fromValue(map['period'] as int),
      stat: pulumi.Input.fromValue(map['stat'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

