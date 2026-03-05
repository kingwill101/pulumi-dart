// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'comparison_operation_type.dart';
import 'metric_statistic_type.dart';
import 'scale_rule_metric_dimension.dart';
import 'time_aggregation_type.dart';

/// The trigger that results in a scaling action.
class MetricTrigger {
  /// List of dimension conditions. For example: [{"DimensionName":"AppName","Operator":"Equals","Values":["App1"]},{"DimensionName":"Deployment","Operator":"Equals","Values":["default"]}].
  final pulumi.Input<List<ScaleRuleMetricDimension>>? dimensions;
  /// a value indicating whether metric should divide per instance.
  final pulumi.Input<bool>? dividePerInstance;
  /// the name of the metric that defines what the rule monitors.
  final pulumi.Input<String> metricName;
  /// the namespace of the metric that defines what the rule monitors.
  final pulumi.Input<String>? metricNamespace;
  /// the location of the resource the rule monitors.
  final pulumi.Input<String>? metricResourceLocation;
  /// the resource identifier of the resource the rule monitors.
  final pulumi.Input<String> metricResourceUri;
  /// the operator that is used to compare the metric data and the threshold.
  final pulumi.Input<ComparisonOperationType> operator;
  /// the metric statistic type. How the metrics from multiple instances are combined.
  final pulumi.Input<MetricStatisticType> statistic;
  /// the threshold of the metric that triggers the scale action.
  final pulumi.Input<double> threshold;
  /// time aggregation type. How the data that is collected should be combined over time. The default value is Average.
  final pulumi.Input<TimeAggregationType> timeAggregation;
  /// the granularity of metrics the rule monitors. Must be one of the predefined values returned from metric definitions for the metric. Must be between 12 hours and 1 minute.
  final pulumi.Input<String> timeGrain;
  /// the range of time in which instance data is collected. This value must be greater than the delay in metric collection, which can vary from resource-to-resource. Must be between 12 hours and 5 minutes.
  final pulumi.Input<String> timeWindow;

  /// Creates a new [MetricTrigger].
  /// [dimensions] List of dimension conditions. For example: [{"DimensionName":"AppName","Operator":"Equals","Values":["App1"]},{"DimensionName":"Deployment","Operator":"Equals","Values":["default"]}].
  /// [dividePerInstance] a value indicating whether metric should divide per instance.
  /// [metricName] the name of the metric that defines what the rule monitors.
  /// [metricNamespace] the namespace of the metric that defines what the rule monitors.
  /// [metricResourceLocation] the location of the resource the rule monitors.
  /// [metricResourceUri] the resource identifier of the resource the rule monitors.
  /// [operator] the operator that is used to compare the metric data and the threshold.
  /// [statistic] the metric statistic type. How the metrics from multiple instances are combined.
  /// [threshold] the threshold of the metric that triggers the scale action.
  /// [timeAggregation] time aggregation type. How the data that is collected should be combined over time. The default value is Average.
  /// [timeGrain] the granularity of metrics the rule monitors. Must be one of the predefined values returned from metric definitions for the metric. Must be between 12 hours and 1 minute.
  /// [timeWindow] the range of time in which instance data is collected. This value must be greater than the delay in metric collection, which can vary from resource-to-resource. Must be between 12 hours and 5 minutes.
  MetricTrigger({
    this.dimensions,
    this.dividePerInstance,
    required this.metricName,
    this.metricNamespace,
    this.metricResourceLocation,
    required this.metricResourceUri,
    required this.operator,
    required this.statistic,
    required this.threshold,
    required this.timeAggregation,
    required this.timeGrain,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleMetricDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<ScaleRuleMetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dividePerInstance': ?dividePerInstance,
      'metricName': metricName,
      'metricNamespace': ?metricNamespace,
      'metricResourceLocation': ?metricResourceLocation,
      'metricResourceUri': metricResourceUri,
      'operator': pulumi.Input.mapInputValue<ComparisonOperationType, String>(operator, (value) => value.wireValue),
      'statistic': pulumi.Input.mapInputValue<MetricStatisticType, String>(statistic, (value) => value.wireValue),
      'threshold': threshold,
      'timeAggregation': pulumi.Input.mapInputValue<TimeAggregationType, String>(timeAggregation, (value) => value.wireValue),
      'timeGrain': timeGrain,
      'timeWindow': timeWindow,
    };
  }

  factory MetricTrigger.fromMap(Map<String, dynamic> map) {
    return MetricTrigger(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleMetricDimension>(guardedValue, (value) => ScaleRuleMetricDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dividePerInstance: (() { final guardedValue = map['dividePerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: (() { final guardedValue = map['metricNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricResourceLocation: (() { final guardedValue = map['metricResourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricResourceUri: pulumi.Input.fromValue(map['metricResourceUri'] as String),
      operator: pulumi.Input.fromValue(ComparisonOperationType.fromValue(map['operator']! as String)),
      statistic: pulumi.Input.fromValue(MetricStatisticType.fromValue(map['statistic']! as String)),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      timeAggregation: pulumi.Input.fromValue(TimeAggregationType.fromValue(map['timeAggregation']! as String)),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
      timeWindow: pulumi.Input.fromValue(map['timeWindow'] as String),
    );
  }
}

