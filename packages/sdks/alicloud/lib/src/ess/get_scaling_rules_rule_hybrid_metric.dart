// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_rules_rule_hybrid_metric_dimension.dart';

class GetScalingRulesRuleHybridMetric {
  /// (Available since v1.250.0) The metric dimensions. You can use this parameter to specify the monitored resources.
  final List<GetScalingRulesRuleHybridMetricDimension> dimensions;
  /// (Available since v1.250.0) The metric expression that consists of multiple Hybrid Cloud Monitoring metrics. It calculates a result used to trigger scaling events. The expression is written in Reverse Polish Notation (RPN) format and includes only the following operators: +, -, *, /.
  final String expression;
  /// (Available since v1.250.0) The reference ID of the metric in the metric expression.
  final String id;
  /// (Available since v1.250.0) The name of the Hybrid Cloud Monitoring metric.
  final String metricName;
  /// (Available since v1.250.0) The statistical method of the metric data.
  final String statistic;

  /// Creates a new [GetScalingRulesRuleHybridMetric].
  /// [dimensions] (Available since v1.250.0) The metric dimensions. You can use this parameter to specify the monitored resources.
  /// [expression] (Available since v1.250.0) The metric expression that consists of multiple Hybrid Cloud Monitoring metrics. It calculates a result used to trigger scaling events. The expression is written in Reverse Polish Notation (RPN) format and includes only the following operators: +, -, *, /.
  /// [id] (Available since v1.250.0) The reference ID of the metric in the metric expression.
  /// [metricName] (Available since v1.250.0) The name of the Hybrid Cloud Monitoring metric.
  /// [statistic] (Available since v1.250.0) The statistical method of the metric data.
  GetScalingRulesRuleHybridMetric({
    required this.dimensions,
    required this.expression,
    required this.id,
    required this.metricName,
    required this.statistic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.encodeList<GetScalingRulesRuleHybridMetricDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'expression': expression,
      'id': id,
      'metricName': metricName,
      'statistic': statistic,
    };
  }

  factory GetScalingRulesRuleHybridMetric.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesRuleHybridMetric(
      dimensions: pulumi.Input.decodeList<GetScalingRulesRuleHybridMetricDimension>(map['dimensions'], (value) => GetScalingRulesRuleHybridMetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      expression: map['expression'] as String,
      id: map['id'] as String,
      metricName: map['metricName'] as String,
      statistic: map['statistic'] as String,
    );
  }
}

