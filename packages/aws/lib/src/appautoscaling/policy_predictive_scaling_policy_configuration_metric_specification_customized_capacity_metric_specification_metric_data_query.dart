// ignore_for_file: unused_element, unnecessary_cast

import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery {
  /// Math expression to perform on the returned data, if this object is performing a math expression.
  final String? expression;

  /// Short name that identifies the object's results in the response.
  final String id;

  /// Human-readable label for this metric or expression.
  final String? label;

  /// Information about the metric data to return. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat?
  metricStat;

  /// Whether to return the timestamps and raw data values of this metric.
  final bool? returnData;

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
      'metricStat': ?metricStat == null ? null : metricStat!.toMap(),
      'returnData': ?returnData,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery(
      expression: map['expression'] == null
          ? null
          : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metricStat: map['metricStat'] == null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat.fromMap(
              (map['metricStat'] as Map).cast<String, dynamic>(),
            ),
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}
