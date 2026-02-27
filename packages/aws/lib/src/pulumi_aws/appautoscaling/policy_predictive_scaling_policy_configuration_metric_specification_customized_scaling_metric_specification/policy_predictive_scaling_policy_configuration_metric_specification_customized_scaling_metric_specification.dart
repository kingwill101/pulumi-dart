// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query/policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  /// One or more metric data queries to provide data points for a metric specification. See supported fields below.
  final List<
          PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>
      metricDataQueries;

  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricDataQueries'] = pulumi.Input.encodeList<
        PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery,
        Map<String, dynamic>>(metricDataQueries, (value) => value.toMap());
    return map;
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification(
      metricDataQueries: pulumi.Input.decodeList<
              PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery>(
          map['metricDataQueries'],
          (value) =>
              PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
