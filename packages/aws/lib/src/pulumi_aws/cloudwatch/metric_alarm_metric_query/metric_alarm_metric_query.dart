// ignore_for_file: unused_element, unnecessary_cast

import '../metric_alarm_metric_query_metric/metric_alarm_metric_query_metric.dart';

class MetricAlarmMetricQuery {
  /// The ID of the account where the metrics are located, if this is a cross-account alarm.
  final String? accountId;

  /// A Metrics Insights query or a metric math expression to be evaluated on the returned data.
  /// For details about Metrics Insights queries, see [Metrics Insights query components and syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch-metrics-insights-querylanguage) in the AWS documentation.
  /// For details about metric math expressions, see [Metric Math Syntax and Functions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax) in the AWS documentation.
  final String? expression;

  /// A short name used to tie this object to the results in the response. If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the mathematical expression. The valid characters are letters, numbers, and underscore. The first character must be a lowercase letter.
  final String id;

  /// A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents.
  final String? label;

  /// The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.
  final MetricAlarmMetricQueryMetric? metric;

  /// Granularity in seconds of returned data points.
  /// For metrics with regular resolution, valid values are any multiple of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  /// For high-resolution metrics, valid values are <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>, <span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span>, <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>, <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>, or any multiple of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final int? period;

  /// Specify exactly one <span pulumi-lang-nodejs="`metricQuery`" pulumi-lang-dotnet="`MetricQuery`" pulumi-lang-go="`metricQuery`" pulumi-lang-python="`metric_query`" pulumi-lang-yaml="`metricQuery`" pulumi-lang-java="`metricQuery`">`metric_query`</span> to be <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to use that <span pulumi-lang-nodejs="`metricQuery`" pulumi-lang-dotnet="`MetricQuery`" pulumi-lang-go="`metricQuery`" pulumi-lang-python="`metric_query`" pulumi-lang-yaml="`metricQuery`" pulumi-lang-java="`metricQuery`">`metric_query`</span> result as the alarm.
  ///
  /// > **NOTE:**  You must specify either <span pulumi-lang-nodejs="`metric`" pulumi-lang-dotnet="`Metric`" pulumi-lang-go="`metric`" pulumi-lang-python="`metric`" pulumi-lang-yaml="`metric`" pulumi-lang-java="`metric`">`metric`</span> or <span pulumi-lang-nodejs="`expression`" pulumi-lang-dotnet="`Expression`" pulumi-lang-go="`expression`" pulumi-lang-python="`expression`" pulumi-lang-yaml="`expression`" pulumi-lang-java="`expression`">`expression`</span>. Not both.
  final bool? returnData;

  MetricAlarmMetricQuery({
    this.accountId,
    this.expression,
    required this.id,
    this.label,
    this.metric,
    this.period,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    map['id'] = id;
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final metricValue = metric;
    if (metricValue != null) {
      map['metric'] = metricValue.toMap();
    }
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    final returnDataValue = returnData;
    if (returnDataValue != null) {
      map['returnData'] = returnDataValue;
    }
    return map;
  }

  factory MetricAlarmMetricQuery.fromMap(Map<String, dynamic> map) {
    return MetricAlarmMetricQuery(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metric: map['metric'] == null
          ? null
          : MetricAlarmMetricQueryMetric.fromMap(
              (map['metric'] as Map).cast<String, dynamic>()),
      period: map['period'] == null ? null : map['period'] as int,
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}
