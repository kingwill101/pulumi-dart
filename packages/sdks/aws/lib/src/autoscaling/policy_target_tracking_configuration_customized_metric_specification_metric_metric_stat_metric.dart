// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric_dimension.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric {
  /// Dimensions of the metric.
  final pulumi.Input<List<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>>? dimensions;
  /// Name of the metric.
  final pulumi.Input<String> metricName;
  /// Namespace of the metric.
  final pulumi.Input<String> namespace;

  /// Creates a new [PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric({
    this.dimensions,
    required this.metricName,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': metricName,
      'namespace': namespace,
    };
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric(
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>(map['dimensions'], (value) => PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metricName: (map['metricName'] as String).input(),
      namespace: (map['namespace'] as String).input(),
    );
  }
}

