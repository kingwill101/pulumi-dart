// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_rule_hybrid_metric_dimension.dart';

class ScalingRuleHybridMetric {
  /// The structure of volumeMounts.
  /// See `dimensions` below for details.
  final List<ScalingRuleHybridMetricDimension>? dimensions;
  /// The metric expression that consists of multiple Hybrid Cloud Monitoring metrics. It calculates a result used to trigger scaling events. The expression must comply with the Reverse Polish Notation (RPN) specification, and the operators can only be + - × /.
  final String? expression;
  /// The reference ID of the metric in the metric expression.
  final String? id;
  /// The name of the Hybrid Cloud Monitoring metric.
  final String? metricName;
  /// The statistical method of the metric value. Valid values: Average, Minimum, Maximum.
  final String? statistic;

  /// Creates a new [ScalingRuleHybridMetric].
  /// [dimensions] The structure of volumeMounts.
  /// [expression] The metric expression that consists of multiple Hybrid Cloud Monitoring metrics. It calculates a result used to trigger scaling events. The expression must comply with the Reverse Polish Notation (RPN) specification, and the operators can only be + - × /.
  /// [id] The reference ID of the metric in the metric expression.
  /// [metricName] The name of the Hybrid Cloud Monitoring metric.
  /// [statistic] The statistical method of the metric value. Valid values: Average, Minimum, Maximum.
  ScalingRuleHybridMetric({
    this.dimensions,
    this.expression,
    this.id,
    this.metricName,
    this.statistic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<ScalingRuleHybridMetricDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'expression': ?expression,
      'id': ?id,
      'metricName': ?metricName,
      'statistic': ?statistic,
    };
  }

  factory ScalingRuleHybridMetric.fromMap(Map<String, dynamic> map) {
    return ScalingRuleHybridMetric(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<ScalingRuleHybridMetricDimension>(map['dimensions'], (value) => ScalingRuleHybridMetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      expression: map['expression'] == null ? null : map['expression'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      statistic: map['statistic'] == null ? null : map['statistic'] as String,
    );
  }
}

