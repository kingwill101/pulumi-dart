// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification_metric_data_query_metric_stat_metric_dimension.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric {
  /// Dimensions of the metric. See supported fields below.
  final List<
          PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>?
      dimensions;

  /// Name of the metric.
  final String? metricName;

  /// Namespace of the metric.
  final String? namespace;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric].
  /// [dimensions] Dimensions of the metric. See supported fields below.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric({
    this.dimensions,
    this.metricName,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = pulumi.Input.encodeList<
          PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension,
          Map<String, dynamic>>(dimensionsValue, (value) => value.toMap());
    }
    final metricNameValue = metricName;
    if (metricNameValue != null) {
      map['metricName'] = metricNameValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    return map;
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetric(
      dimensions: map['dimensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension>(
              map['dimensions'],
              (value) =>
                  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName:
          map['metricName'] == null ? null : map['metricName'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}
