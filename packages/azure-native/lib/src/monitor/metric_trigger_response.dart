// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_metric_dimension_response.dart';

/// The trigger that results in a scaling action.
class MetricTriggerResponse {
  /// List of dimension conditions. For example: [{"DimensionName":"AppName","Operator":"Equals","Values":["App1"]},{"DimensionName":"Deployment","Operator":"Equals","Values":["default"]}].
  final List<ScaleRuleMetricDimensionResponse>? dimensions;
  /// a value indicating whether metric should divide per instance.
  final bool? dividePerInstance;
  /// the name of the metric that defines what the rule monitors.
  final String metricName;
  /// the namespace of the metric that defines what the rule monitors.
  final String? metricNamespace;
  /// the location of the resource the rule monitors.
  final String? metricResourceLocation;
  /// the resource identifier of the resource the rule monitors.
  final String metricResourceUri;
  /// the operator that is used to compare the metric data and the threshold.
  final String operator;
  /// the metric statistic type. How the metrics from multiple instances are combined.
  final String statistic;
  /// the threshold of the metric that triggers the scale action.
  final double threshold;
  /// time aggregation type. How the data that is collected should be combined over time. The default value is Average.
  final String timeAggregation;
  /// the granularity of metrics the rule monitors. Must be one of the predefined values returned from metric definitions for the metric. Must be between 12 hours and 1 minute.
  final String timeGrain;
  /// the range of time in which instance data is collected. This value must be greater than the delay in metric collection, which can vary from resource-to-resource. Must be between 12 hours and 5 minutes.
  final String timeWindow;

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
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<ScaleRuleMetricDimensionResponse, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
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
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<ScaleRuleMetricDimensionResponse>(map['dimensions'], (value) => ScaleRuleMetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      dividePerInstance: map['dividePerInstance'] == null ? null : map['dividePerInstance'] as bool,
      metricName: map['metricName'] as String,
      metricNamespace: map['metricNamespace'] == null ? null : map['metricNamespace'] as String,
      metricResourceLocation: map['metricResourceLocation'] == null ? null : map['metricResourceLocation'] as String,
      metricResourceUri: map['metricResourceUri'] as String,
      operator: map['operator'] as String,
      statistic: map['statistic'] as String,
      threshold: map['threshold'] as double,
      timeAggregation: map['timeAggregation'] as String,
      timeGrain: map['timeGrain'] as String,
      timeWindow: map['timeWindow'] as String,
    );
  }
}

