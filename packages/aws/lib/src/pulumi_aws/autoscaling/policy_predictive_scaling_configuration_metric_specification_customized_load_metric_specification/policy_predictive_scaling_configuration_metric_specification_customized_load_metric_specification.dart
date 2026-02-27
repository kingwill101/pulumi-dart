// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification_metric_data_query/policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification_metric_data_query.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification {
  /// List of up to 10 structures that defines custom load metric in predictive scaling policy
  final List<
          PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery>
      metricDataQueries;

  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification({
    required this.metricDataQueries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricDataQueries'] = pulumi.Input.encodeList<
        PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery,
        Map<String, dynamic>>(metricDataQueries, (value) => value.toMap());
    return map;
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification(
      metricDataQueries: pulumi.Input.decodeList<
              PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery>(
          map['metricDataQueries'],
          (value) =>
              PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQuery
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
