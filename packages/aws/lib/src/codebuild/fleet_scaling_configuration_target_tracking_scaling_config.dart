// ignore_for_file: unused_element, unnecessary_cast

class FleetScalingConfigurationTargetTrackingScalingConfig {
  /// Metric type to determine auto-scaling. Valid value: `FLEET_UTILIZATION_RATE`.
  final String? metricType;

  /// Value of metricType when to start scaling.
  final double? targetValue;

  /// Creates a new [FleetScalingConfigurationTargetTrackingScalingConfig].
  /// [metricType] Metric type to determine auto-scaling. Valid value: `FLEET_UTILIZATION_RATE`.
  /// [targetValue] Value of metricType when to start scaling.
  FleetScalingConfigurationTargetTrackingScalingConfig({
    this.metricType,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricType': ?metricType,
      'targetValue': ?targetValue,
    };
  }

  factory FleetScalingConfigurationTargetTrackingScalingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetScalingConfigurationTargetTrackingScalingConfig(
      metricType: map['metricType'] == null
          ? null
          : map['metricType'] as String,
      targetValue: map['targetValue'] == null
          ? null
          : map['targetValue'] as double,
    );
  }
}
