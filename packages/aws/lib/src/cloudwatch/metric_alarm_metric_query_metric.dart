// ignore_for_file: unused_element, unnecessary_cast

class MetricAlarmMetricQueryMetric {
  /// The dimensions for this metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final Map<String, String>? dimensions;

  /// The name for this metric.
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final String metricName;

  /// The namespace for this metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  final String? namespace;

  /// Granularity in seconds of returned data points.
  /// For metrics with regular resolution, valid values are any multiple of `60`.
  /// For high-resolution metrics, valid values are `1`, `5`, `10`, `20`, `30`, or any multiple of `60`.
  final int period;

  /// The statistic to apply to this metric.
  /// See docs for [supported statistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html).
  final String stat;

  /// The unit for this metric.
  final String? unit;

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
      dimensions: map['dimensions'] == null
          ? null
          : (map['dimensions'] as Map).cast<String, String>(),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      period: map['period'] as int,
      stat: map['stat'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}
