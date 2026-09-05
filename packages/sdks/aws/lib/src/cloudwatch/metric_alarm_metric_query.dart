// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alarm_metric_query_metric.dart';

class MetricAlarmMetricQuery {
  /// The ID of the account where the metrics are located, if this is a cross-account alarm.
  final pulumi.Input<String?>? accountId;
  /// A Metrics Insights query or a metric math expression to be evaluated on the returned data.
  /// For details about Metrics Insights queries, see [Metrics Insights query components and syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch-metrics-insights-querylanguage) in the AWS documentation.
  /// For details about metric math expressions, see [Metric Math Syntax and Functions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax) in the AWS documentation.
  final pulumi.Input<String?>? expression;
  /// A short name used to tie this object to the results in the response. If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the mathematical expression. The valid characters are letters, numbers, and underscore. The first character must be a lowercase letter.
  final pulumi.Input<String> id;
  /// A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents.
  final pulumi.Input<String?>? label;
  /// The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.
  final pulumi.Input<MetricAlarmMetricQueryMetric?>? metric;
  /// Granularity in seconds of returned data points.
  /// For metrics with regular resolution, valid values are any multiple of `60`.
  /// For high-resolution metrics, valid values are `1`, `5`, `10`, `20`, `30`, or any multiple of `60`.
  final pulumi.Input<int?>? period;
  /// Specify exactly one `metricQuery` to be `true` to use that `metricQuery` result as the alarm.
  ///
  /// &gt; **NOTE:**  You must specify either `metric` or `expression`. Not both.
  final pulumi.Input<bool?>? returnData;

  /// Creates a new [MetricAlarmMetricQuery].
  /// [accountId] The ID of the account where the metrics are located, if this is a cross-account alarm.
  /// [expression] A Metrics Insights query or a metric math expression to be evaluated on the returned data.
  /// [id] A short name used to tie this object to the results in the response. If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the mathematical expression. The valid characters are letters, numbers, and underscore. The first character must be a lowercase letter.
  /// [label] A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents.
  /// [metric] The metric to be returned, along with statistics, period, and units. Use this parameter only if this object is retrieving a metric and not performing a math expression on returned data.
  /// [period] Granularity in seconds of returned data points.
  /// [returnData] Specify exactly one `metricQuery` to be `true` to use that `metricQuery` result as the alarm.
  const MetricAlarmMetricQuery({
    this.accountId,
    this.expression,
    required this.id,
    this.label,
    this.metric,
    this.period,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'expression': ?expression,
      'id': id,
      'label': ?label,
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricAlarmMetricQueryMetric, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'period': ?period,
      'returnData': ?returnData,
    };
  }

  factory MetricAlarmMetricQuery.fromMap(Map<String, dynamic> map) {
    return MetricAlarmMetricQuery(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricAlarmMetricQueryMetric.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      returnData: (() { final guardedValue = map['returnData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
