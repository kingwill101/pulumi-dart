// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification_metric_data_query/policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification {
  /// One or more metric data queries to provide data points for a metric specification. See supported fields below.
  final List<
          PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery>
      metricDataQueries;

  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricDataQueries'] = Input.encodeList<
        PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery,
        Map<String, dynamic>>(metricDataQueries, (value) => value.toMap());
    return map;
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification(
      metricDataQueries: Input.decodeList<
              PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery>(
          map['metricDataQueries'],
          (value) =>
              PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
