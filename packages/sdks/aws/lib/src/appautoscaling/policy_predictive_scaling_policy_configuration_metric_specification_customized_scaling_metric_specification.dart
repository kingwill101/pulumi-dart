// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  /// One or more metric data queries to provide data points for a metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query` Block for details.
  final pulumi.Input<List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>> metricDataQueries;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification].
  /// [metricDataQueries] One or more metric data queries to provide data points for a metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification.metric_data_query` Block for details.
  const PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDataQueries': pulumi.Input.mapInputValue<List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>, List<Map<String, dynamic>>>(metricDataQueries, (value) => pulumi.Input.encodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification(
      metricDataQueries: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>(map['metricDataQueries']!, (value) => PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
