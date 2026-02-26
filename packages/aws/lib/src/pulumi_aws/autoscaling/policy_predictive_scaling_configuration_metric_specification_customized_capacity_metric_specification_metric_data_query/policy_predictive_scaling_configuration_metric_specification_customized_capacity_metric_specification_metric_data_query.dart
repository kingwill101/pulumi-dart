// ignore_for_file: unused_element, unnecessary_cast

import '../policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat/policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery {
  /// Math expression used on the returned metric. You must specify either <span pulumi-lang-nodejs="`expression`" pulumi-lang-dotnet="`Expression`" pulumi-lang-go="`expression`" pulumi-lang-python="`expression`" pulumi-lang-yaml="`expression`" pulumi-lang-java="`expression`">`expression`</span> or <span pulumi-lang-nodejs="`metricStat`" pulumi-lang-dotnet="`MetricStat`" pulumi-lang-go="`metricStat`" pulumi-lang-python="`metric_stat`" pulumi-lang-yaml="`metricStat`" pulumi-lang-java="`metricStat`">`metric_stat`</span>, but not both.
  final String? expression;

  /// Short name for the metric used in predictive scaling policy.
  final String id;

  /// Human-readable label for this metric or expression.
  final String? label;

  /// Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either <span pulumi-lang-nodejs="`expression`" pulumi-lang-dotnet="`Expression`" pulumi-lang-go="`expression`" pulumi-lang-python="`expression`" pulumi-lang-yaml="`expression`" pulumi-lang-java="`expression`">`expression`</span> or <span pulumi-lang-nodejs="`metricStat`" pulumi-lang-dotnet="`MetricStat`" pulumi-lang-go="`metricStat`" pulumi-lang-python="`metric_stat`" pulumi-lang-yaml="`metricStat`" pulumi-lang-java="`metricStat`">`metric_stat`</span>, but not both.
  final PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat?
      metricStat;

  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final bool? returnData;

  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery({
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

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      id: map['id'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      metricStat: map['metricStat'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStat
              .fromMap((map['metricStat'] as Map).cast<String, dynamic>()),
      returnData: map['returnData'] == null ? null : map['returnData'] as bool,
    );
  }
}
