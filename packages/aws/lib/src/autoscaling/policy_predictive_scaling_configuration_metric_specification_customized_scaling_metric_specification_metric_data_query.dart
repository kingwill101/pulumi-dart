// ignore_for_file: unused_element, unnecessary_cast

import 'policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery {
  /// Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  final String? expression;

  /// Short name for the metric used in predictive scaling policy.
  final String id;

  /// Human-readable label for this metric or expression.
  final String? label;

  /// Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  final PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat?
  metricStat;

  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final bool? returnData;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery].
  /// [expression] Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  /// [id] Short name for the metric used in predictive scaling policy.
  /// [label] Human-readable label for this metric or expression.
  /// [metricStat] Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  /// [returnData] Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery({
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

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery(
      expression: map['expression'] == null
          ? null
          : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metricStat: map['metricStat'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStat.fromMap(
              (map['metricStat'] as Map).cast<String, dynamic>(),
            ),
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}
