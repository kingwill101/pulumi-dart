// ignore_for_file: unused_element, unnecessary_cast


class GetFleetScalingConfigurationTargetTrackingScalingConfig {
  /// The metric type to determine auto-scaling.
  final String metricType;
  /// The value of metric_type when to start scaling.
  final double targetValue;

  /// Creates a new [GetFleetScalingConfigurationTargetTrackingScalingConfig].
  /// [metricType] The metric type to determine auto-scaling.
  /// [targetValue] The value of metric_type when to start scaling.
  GetFleetScalingConfigurationTargetTrackingScalingConfig({
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
      metricType: map['metricType'] as String,
      targetValue: map['targetValue'] as double,
    );
  }
}

