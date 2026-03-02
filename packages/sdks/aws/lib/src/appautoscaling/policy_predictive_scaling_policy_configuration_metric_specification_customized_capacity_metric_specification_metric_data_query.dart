// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery {
  /// Math expression to perform on the returned data, if this object is performing a math expression.
  final pulumi.Input<String>? expression;
  /// Short name that identifies the object's results in the response.
  final pulumi.Input<String> id;
  /// Human-readable label for this metric or expression.
  final pulumi.Input<String>? label;
  /// Information about the metric data to return. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat>? metricStat;
  /// Whether to return the timestamps and raw data values of this metric.
  final pulumi.Input<bool>? returnData;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery].
  /// [expression] Math expression to perform on the returned data, if this object is performing a math expression.
  /// [id] Short name that identifies the object's results in the response.
  /// [label] Human-readable label for this metric or expression.
  /// [metricStat] Information about the metric data to return. See supported fields below.
  /// [returnData] Whether to return the timestamps and raw data values of this metric.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery({
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
      'metricStat': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat, Map<String, dynamic>>(metricStat, (value) => value.toMap()),
      'returnData': ?returnData,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery(
      expression: map['expression'] == null ? null : ((map['expression'] as String).input()).input(),
      id: (map['id'] as String).input(),
      label: map['label'] == null ? null : ((map['label'] as String).input()).input(),
      metricStat: map['metricStat'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat.fromMap((map['metricStat']! as Map).cast<String, dynamic>())).input()).input(),
      returnData: map['returnData'] == null ? null : ((map['returnData'] as bool).input()).input(),
    );
  }
}

