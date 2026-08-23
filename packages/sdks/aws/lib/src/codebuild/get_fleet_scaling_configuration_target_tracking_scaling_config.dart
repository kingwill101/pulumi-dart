// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFleetScalingConfigurationTargetTrackingScalingConfig {
  /// The metric type to determine auto-scaling.
  final pulumi.Input<String> metricType;
  /// The value of metricType when to start scaling.
  final pulumi.Input<double> targetValue;

  /// Creates a new [GetFleetScalingConfigurationTargetTrackingScalingConfig].
  /// [metricType] The metric type to determine auto-scaling.
  /// [targetValue] The value of metricType when to start scaling.
  const GetFleetScalingConfigurationTargetTrackingScalingConfig({
    required this.metricType,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricType': metricType,
      'targetValue': targetValue,
    };
  }

  factory GetFleetScalingConfigurationTargetTrackingScalingConfig.fromMap(Map<String, dynamic> map) {
    return GetFleetScalingConfigurationTargetTrackingScalingConfig(
      metricType: pulumi.Input.fromValue(map['metricType'] as String),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
    );
  }
}
