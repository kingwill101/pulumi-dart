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
  /// For metrics with regular resolution, valid values are any multiple of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  /// For high-resolution metrics, valid values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span>, <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>, <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>, or any multiple of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final int period;

  /// The statistic to apply to this metric.
  /// See docs for [supported statistics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html).
  final String stat;

  /// The unit for this metric.
  final String? unit;

  MetricAlarmMetricQueryMetric({
    this.dimensions,
    required this.metricName,
    this.namespace,
    required this.period,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    map['metricName'] = metricName;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    map['period'] = period;
    map['stat'] = stat;
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
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
