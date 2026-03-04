// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_rule_hybrid_metric_dimension.dart';

class ScalingRuleHybridMetric {
  /// The structure of volumeMounts.
  /// See `dimensions` below for details.
  final pulumi.Input<List<ScalingRuleHybridMetricDimension>>? dimensions;

  /// The metric expression that consists of multiple Hybrid Cloud Monitoring metrics. It calculates a result used to trigger scaling events. The expression must comply with the Reverse Polish Notation (RPN) specification, and the operators can only be + - × /.
  final pulumi.Input<String>? expression;

  /// The reference ID of the metric in the metric expression.
  final pulumi.Input<String>? id;

  /// The name of the Hybrid Cloud Monitoring metric.
  final pulumi.Input<String>? metricName;

  /// The statistical method of the metric value. Valid values: Average, Minimum, Maximum.
  final pulumi.Input<String>? statistic;

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
      'dimensions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScalingRuleHybridMetricDimension>,
            List<Map<String, dynamic>>
          >(
            dimensions,
            (value) =>
                pulumi.Input.encodeList<
                  ScalingRuleHybridMetricDimension,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'expression': ?expression,
      'id': ?id,
      'metricName': ?metricName,
      'statistic': ?statistic,
    };
  }

  factory ScalingRuleHybridMetric.fromMap(Map<String, dynamic> map) {
    return ScalingRuleHybridMetric(
      dimensions: (() {
        final guardedValue = map['dimensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScalingRuleHybridMetricDimension>(
            guardedValue,
            (value) => ScalingRuleHybridMetricDimension.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metricName: (() {
        final guardedValue = map['metricName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statistic: (() {
        final guardedValue = map['statistic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
