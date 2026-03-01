// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification {
  /// One or more metric data queries to provide data points for a metric specification. See supported fields below.
  final List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery> metricDataQueries;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification].
  /// [metricDataQueries] One or more metric data queries to provide data points for a metric specification. See supported fields below.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDataQueries': pulumi.Input.encodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery, Map<String, dynamic>>(metricDataQueries, (value) => value.toMap()),
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification(
      metricDataQueries: pulumi.Input.decodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery>(map['metricDataQueries'], (value) => PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

