// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification {
  /// Dimensions of the metric.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// Name of the metric.
  final pulumi.Input<String> metricName;
  /// Namespace of the metric.
  final pulumi.Input<String> namespace;
  /// Statistic of the metric. Valid values: `Average`, `Maximum`, `Minimum`, `SampleCount`, `Sum`.
  final pulumi.Input<String> statistic;
  /// Unit of the metric.
  final pulumi.Input<String>? unit;

  /// Creates a new [ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  /// [statistic] Statistic of the metric. Valid values: `Average`, `Maximum`, `Minimum`, `SampleCount`, `Sum`.
  /// [unit] Unit of the metric.
  ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification({
    this.dimensions,
    required this.metricName,
    required this.namespace,
    required this.statistic,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'metricName': metricName,
      'namespace': namespace,
      'statistic': statistic,
      'unit': ?unit,
    };
  }

  factory ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification.fromMap(Map<String, dynamic> map) {
    return ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification(
      dimensions: map['dimensions'] == null ? null : ((map['dimensions'] as Map).cast<String, String>()).input(),
      metricName: (map['metricName'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      statistic: (map['statistic'] as String).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
    );
  }
}

