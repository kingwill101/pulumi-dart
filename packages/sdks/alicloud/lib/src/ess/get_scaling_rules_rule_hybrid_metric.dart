// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_rules_rule_hybrid_metric_dimension.dart';

class GetScalingRulesRuleHybridMetric {
  /// (Available since v1.250.0) The metric dimensions. You can use this parameter to specify the monitored resources.
  final pulumi.Input<List<GetScalingRulesRuleHybridMetricDimension>> dimensions;
  /// (Available since v1.250.0) The metric expression that consists of multiple Hybrid Cloud Monitoring metrics. It calculates a result used to trigger scaling events. The expression is written in Reverse Polish Notation (RPN) format and includes only the following operators: +, -, *, /.
  final pulumi.Input<String> expression;
  /// (Available since v1.250.0) The reference ID of the metric in the metric expression.
  final pulumi.Input<String> id;
  /// (Available since v1.250.0) The name of the Hybrid Cloud Monitoring metric.
  final pulumi.Input<String> metricName;
  /// (Available since v1.250.0) The statistical method of the metric data.
  final pulumi.Input<String> statistic;

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
      'dimensions': pulumi.Input.mapInputValue<List<GetScalingRulesRuleHybridMetricDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<GetScalingRulesRuleHybridMetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expression': expression,
      'id': id,
      'metricName': metricName,
      'statistic': statistic,
    };
  }

  factory GetScalingRulesRuleHybridMetric.fromMap(Map<String, dynamic> map) {
    return GetScalingRulesRuleHybridMetric(
      dimensions: (pulumi.Input.decodeList<GetScalingRulesRuleHybridMetricDimension>(map['dimensions'], (value) => GetScalingRulesRuleHybridMetricDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expression: (map['expression'] as String).input(),
      id: (map['id'] as String).input(),
      metricName: (map['metricName'] as String).input(),
      statistic: (map['statistic'] as String).input(),
    );
  }
}

