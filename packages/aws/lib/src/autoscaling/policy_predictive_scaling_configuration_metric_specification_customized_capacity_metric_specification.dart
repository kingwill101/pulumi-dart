// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification {
  /// List of up to 10 structures that defines custom capacity metric in predictive scaling policy
  final List<
    PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery
  >
  metricDataQueries;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification].
  /// [metricDataQueries] List of up to 10 structures that defines custom capacity metric in predictive scaling policy
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDataQueries':
          pulumi.Input.encodeList<
            PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery,
            Map<String, dynamic>
          >(metricDataQueries, (value) => value.toMap()),
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification(
      metricDataQueries:
          pulumi.Input.decodeList<
            PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery
          >(
            map['metricDataQueries'],
            (value) =>
                PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQuery.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
