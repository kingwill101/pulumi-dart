// ignore_for_file: unused_element, unnecessary_cast

import '../policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification_metric_data_query_metric_stat/policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery {
  /// Math expression to perform on the returned data, if this object is performing a math expression.
  final String? expression;

  /// Short name that identifies the object's results in the response.
  final String id;

  /// Human-readable label for this metric or expression.
  final String? label;

  /// Information about the metric data to return. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat?
      metricStat;

  /// Whether to return the timestamps and raw data values of this metric.
  final bool? returnData;

  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery({
    this.expression,
    required this.id,
    this.label,
    this.metricStat,
    this.returnData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    map['id'] = id;
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final metricStatValue = metricStat;
    if (metricStatValue != null) {
      map['metricStat'] = metricStatValue.toMap();
    }
    final returnDataValue = returnData;
    if (returnDataValue != null) {
      map['returnData'] = returnDataValue;
    }
    return map;
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metricStat: map['metricStat'] == null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat
              .fromMap((map['metricStat'] as Map).cast<String, dynamic>()),
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}
