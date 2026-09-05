// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_scaling_policy_configuration_customized_metric_specification_metric_metric_stat_metric_dimension.dart';

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric {
  /// Dimensions of the metric. See `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat.metric.dimensions` Block for details.
  final pulumi.Input<List<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>?>? dimensions;
  final pulumi.Input<String> metricName;
  final pulumi.Input<String> namespace;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric].
  /// [dimensions] Dimensions of the metric. See `target_tracking_scaling_policy_configuration.customized_metric_specification.metrics.metric_stat.metric.dimensions` Block for details.
  /// [metricName] Required.
  /// [namespace] Required.
  const PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': metricName,
      'namespace': namespace,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetric(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>(guardedValue, (value) => PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
