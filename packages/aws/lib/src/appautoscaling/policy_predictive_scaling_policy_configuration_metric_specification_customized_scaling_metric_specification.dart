// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  /// One or more metric data queries to provide data points for a metric specification. See supported fields below.
  final List<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery> metricDataQueries;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification].
  /// [metricDataQueries] One or more metric data queries to provide data points for a metric specification. See supported fields below.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDataQueries': pulumi.Input.encodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery, Map<String, dynamic>>(metricDataQueries, (value) => value.toMap()),
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification(
      metricDataQueries: pulumi.Input.decodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>(map['metricDataQueries'], (value) => PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

