// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification {
  /// List of up to 10 structures that defines custom scaling metric in predictive scaling policy
  final List<
    PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery
  >
  metricDataQueries;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification].
  /// [metricDataQueries] List of up to 10 structures that defines custom scaling metric in predictive scaling policy
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDataQueries':
          pulumi.Input.encodeList<
            PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery,
            Map<String, dynamic>
          >(metricDataQueries, (value) => value.toMap()),
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification(
      metricDataQueries:
          pulumi.Input.decodeList<
            PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery
          >(
            map['metricDataQueries'],
            (value) =>
                PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQuery.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
