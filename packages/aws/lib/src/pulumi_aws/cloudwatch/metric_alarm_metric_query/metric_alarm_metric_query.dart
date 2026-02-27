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
  /// For metrics with regular resolution, valid values are any multiple of `60`.
  /// For high-resolution metrics, valid values are `1`, `5`, `10`, `20`, `30`, or any multiple of `60`.
  final int? period;

  /// Specify exactly one `metric_query` to be `true` to use that `metric_query` result as the alarm.
  ///
  /// > **NOTE:**  You must specify either `metric` or `expression`. Not both.
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
