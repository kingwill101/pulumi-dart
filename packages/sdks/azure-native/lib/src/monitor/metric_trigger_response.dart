// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_metric_dimension_response.dart';

/// The trigger that results in a scaling action.
class MetricTriggerResponse {
  /// List of dimension conditions. For example: [{"DimensionName":"AppName","Operator":"Equals","Values":["App1"]},{"DimensionName":"Deployment","Operator":"Equals","Values":["default"]}].
  final pulumi.Input<List<ScaleRuleMetricDimensionResponse>>? dimensions;
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
  final pulumi.Input<String> operator;
  /// the metric statistic type. How the metrics from multiple instances are combined.
  final pulumi.Input<String> statistic;
  /// the threshold of the metric that triggers the scale action.
  final pulumi.Input<double> threshold;
  /// time aggregation type. How the data that is collected should be combined over time. The default value is Average.
  final pulumi.Input<String> timeAggregation;
  /// the granularity of metrics the rule monitors. Must be one of the predefined values returned from metric definitions for the metric. Must be between 12 hours and 1 minute.
  final pulumi.Input<String> timeGrain;
  /// the range of time in which instance data is collected. This value must be greater than the delay in metric collection, which can vary from resource-to-resource. Must be between 12 hours and 5 minutes.
  final pulumi.Input<String> timeWindow;

  /// Creates a new [MetricTriggerResponse].
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
  MetricTriggerResponse({
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
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleMetricDimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<ScaleRuleMetricDimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dividePerInstance': ?dividePerInstance,
      'metricName': metricName,
      'metricNamespace': ?metricNamespace,
      'metricResourceLocation': ?metricResourceLocation,
      'metricResourceUri': metricResourceUri,
      'operator': operator,
      'statistic': statistic,
      'threshold': threshold,
      'timeAggregation': timeAggregation,
      'timeGrain': timeGrain,
      'timeWindow': timeWindow,
    };
  }

  factory MetricTriggerResponse.fromMap(Map<String, dynamic> map) {
    return MetricTriggerResponse(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleMetricDimensionResponse>(guardedValue, (value) => ScaleRuleMetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dividePerInstance: (() { final guardedValue = map['dividePerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: (() { final guardedValue = map['metricNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricResourceLocation: (() { final guardedValue = map['metricResourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricResourceUri: pulumi.Input.fromValue(map['metricResourceUri'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      statistic: pulumi.Input.fromValue(map['statistic'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as double),
      timeAggregation: pulumi.Input.fromValue(map['timeAggregation'] as String),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
      timeWindow: pulumi.Input.fromValue(map['timeWindow'] as String),
    );
  }
}

