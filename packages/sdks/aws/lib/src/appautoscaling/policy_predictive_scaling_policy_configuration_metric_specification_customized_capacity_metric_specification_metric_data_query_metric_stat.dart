// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat_metric.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat {
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric> metric;
  final pulumi.Input<String> stat;
  final pulumi.Input<String?>? unit;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat].
  /// [metric] Required.
  /// [stat] Required.
  /// [unit] Optional.
  const PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat({
    required this.metric,
    required this.stat,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': pulumi.Input.mapInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'stat': stat,
      'unit': ?unit,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat(
      metric: pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric.fromMap((map['metric']! as Map).cast<String, dynamic>())),
      stat: pulumi.Input.fromValue(map['stat'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
