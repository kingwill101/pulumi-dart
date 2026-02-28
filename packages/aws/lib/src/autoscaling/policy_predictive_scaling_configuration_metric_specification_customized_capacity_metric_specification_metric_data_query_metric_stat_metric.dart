// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification_metric_data_query_metric_stat_metric_dimension.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric {
  /// Dimensions of the metric.
  final List<
          PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension>?
      dimensions;

  /// Name of the metric.
  final String metricName;

  /// Namespace of the metric.
  final String namespace;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = pulumi.Input.encodeList<
          PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension,
          Map<String, dynamic>>(dimensionsValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    map['namespace'] = namespace;
    return map;
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetric(
      dimensions: map['dimensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension>(
              map['dimensions'],
              (value) =>
                  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryMetricStatMetricDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
