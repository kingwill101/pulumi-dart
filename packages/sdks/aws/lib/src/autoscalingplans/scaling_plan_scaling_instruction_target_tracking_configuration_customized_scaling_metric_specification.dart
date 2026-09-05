// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification {
  /// Dimensions of the metric.
  final pulumi.Input<Map<String, String>?>? dimensions;
  /// Name of the metric.
  final pulumi.Input<String> metricName;
  /// Namespace of the metric.
  final pulumi.Input<String> namespace;
  /// Statistic of the metric. Valid values: `Average`, `Maximum`, `Minimum`, `SampleCount`, `Sum`.
  final pulumi.Input<String> statistic;
  /// Unit of the metric.
  final pulumi.Input<String?>? unit;

  /// Creates a new [ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification].
  /// [dimensions] Dimensions of the metric.
  /// [metricName] Name of the metric.
  /// [namespace] Namespace of the metric.
  /// [statistic] Statistic of the metric. Valid values: `Average`, `Maximum`, `Minimum`, `SampleCount`, `Sum`.
  /// [unit] Unit of the metric.
  const ScalingPlanScalingInstructionTargetTrackingConfigurationCustomizedScalingMetricSpecification({
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
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      statistic: pulumi.Input.fromValue(map['statistic'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
