// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query_metric_stat_metric_dimension.dart';

class PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric {
  /// Dimensions of the metric.
  final List<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>? dimensions;
  /// Name of the metric.
  final String metricName;
  /// Namespace of the metric.
  final String namespace;

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'metricName': metricName,
      'namespace': namespace,
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>(map['dimensions'], (value) => PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

