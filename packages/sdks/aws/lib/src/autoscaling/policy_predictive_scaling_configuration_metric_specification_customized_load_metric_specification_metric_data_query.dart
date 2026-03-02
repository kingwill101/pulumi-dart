// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification_metric_data_query_metric_stat.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery {
  /// Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  final pulumi.Input<String>? expression;
  /// Short name for the metric used in predictive scaling policy.
  final pulumi.Input<String> id;
  /// Human-readable label for this metric or expression.
  final pulumi.Input<String>? label;
  /// Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat>? metricStat;
  /// Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  final pulumi.Input<bool>? returnData;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery].
  /// [expression] Math expression used on the returned metric. You must specify either `expression` or `metric_stat`, but not both.
  /// [id] Short name for the metric used in predictive scaling policy.
  /// [label] Human-readable label for this metric or expression.
  /// [metricStat] Structure that defines CloudWatch metric to be used in predictive scaling policy. You must specify either `expression` or `metric_stat`, but not both.
  /// [returnData] Boolean that indicates whether to return the timestamps and raw data values of this metric, the default is true
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery({
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
      'metricStat': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat, Map<String, dynamic>>(metricStat, (value) => value.toMap()),
      'returnData': ?returnData,
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery(
      expression: map['expression'] == null ? null : (map['expression'] as String).input(),
      id: (map['id'] as String).input(),
      label: map['label'] == null ? null : (map['label'] as String).input(),
      metricStat: map['metricStat'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStat.fromMap((map['metricStat'] as Map).cast<String, dynamic>())).input(),
      returnData: map['returnData'] == null ? null : (map['returnData'] as bool).input(),
    );
  }
}

