// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetScalingConfigurationTargetTrackingScalingConfig {
  /// Metric type to determine auto-scaling. Valid value: `FLEET_UTILIZATION_RATE`.
  final pulumi.Input<String>? metricType;
  /// Value of metricType when to start scaling.
  final pulumi.Input<double>? targetValue;

  /// Creates a new [FleetScalingConfigurationTargetTrackingScalingConfig].
  /// [metricType] Metric type to determine auto-scaling. Valid value: `FLEET_UTILIZATION_RATE`.
  /// [targetValue] Value of metricType when to start scaling.
  const FleetScalingConfigurationTargetTrackingScalingConfig({
    this.metricType,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricType': ?metricType,
      'targetValue': ?targetValue,
    };
  }

  factory FleetScalingConfigurationTargetTrackingScalingConfig.fromMap(Map<String, dynamic> map) {
    return FleetScalingConfigurationTargetTrackingScalingConfig(
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetValue: (() { final guardedValue = map['targetValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
