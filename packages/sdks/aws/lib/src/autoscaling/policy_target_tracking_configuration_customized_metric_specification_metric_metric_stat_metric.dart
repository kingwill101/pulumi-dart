// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification_metric_metric_stat_metric_dimension.dart';

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric {
  /// Dimensions of the metric.
  final List<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>? dimensions;
  /// Name of the metric.
  final String metricName;
  /// Namespace of the metric.
  final String namespace;

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
      'dimensions': ?dimensions == null ? null : pulumi.Input.encodeList<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension, Map<String, dynamic>>(dimensions!, (value) => value.toMap()),
      'metricName': metricName,
      'namespace': namespace,
    };
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetric(
      dimensions: map['dimensions'] == null ? null : pulumi.Input.decodeList<PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension>(map['dimensions'], (value) => PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
    );
  }
}

