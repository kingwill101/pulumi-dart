// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  /// List of up to 10 structures that defines custom scaling metric in predictive scaling policy
  final pulumi.Input<List<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>> metricDataQueries;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification].
  /// [metricDataQueries] List of up to 10 structures that defines custom scaling metric in predictive scaling policy
  const PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDataQueries': pulumi.Input.mapInputValue<List<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>, List<Map<String, dynamic>>>(metricDataQueries, (value) => pulumi.Input.encodeList<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification(
      metricDataQueries: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>(map['metricDataQueries']!, (value) => PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
