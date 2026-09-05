// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery {
  final pulumi.Input<String?>? expression;
  final pulumi.Input<String> id;
  final pulumi.Input<String?>? label;
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat?>? metricStat;
  final pulumi.Input<bool?>? returnData;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery].
  /// [expression] Optional.
  /// [id] Required.
  /// [label] Optional.
  /// [metricStat] Optional.
  /// [returnData] Optional.
  const PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery({
    this.expression,
    required this.id,
    this.label,
    this.metricStat,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'id': id,
      'label': ?label,
      'metricStat': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat, Map<String, dynamic>>(metricStat, (value) => value.toMap()),
      'returnData': ?returnData,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricStat: (() { final guardedValue = map['metricStat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      returnData: (() { final guardedValue = map['returnData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
