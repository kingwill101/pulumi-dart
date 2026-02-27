// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification_metric_data_query_metric_stat_metric_dimension/policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification_metric_data_query_metric_stat_metric_dimension.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric {
  /// Dimensions of the metric.
  final List<
          PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension>?
      dimensions;

  /// Name of the metric.
  final String metricName;

  /// Namespace of the metric.
  final String namespace;

  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = pulumi.Input.encodeList<
          PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension,
          Map<String, dynamic>>(dimensionsValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    map['namespace'] = namespace;
    return map;
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetric(
      dimensions: map['dimensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension>(
              map['dimensions'],
              (value) =>
                  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryMetricStatMetricDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
