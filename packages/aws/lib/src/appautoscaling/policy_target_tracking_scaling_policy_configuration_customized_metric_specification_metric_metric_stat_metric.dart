// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric_metric_stat_metric_dimension.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric {
  /// Dimensions of the metric.
  final List<
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>?
      dimensions;

  /// Name of the metric.
  final String metricName;

  /// Namespace of the metric.
  final String namespace;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = pulumi.Input.encodeList<
          PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension,
          Map<String, dynamic>>(dimensionsValue, (value) => value.toMap());
    }
    map['metricName'] = metricName;
    map['namespace'] = namespace;
    return map;
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric(
      dimensions: map['dimensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>(
              map['dimensions'],
              (value) =>
                  PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension
                      .fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}
