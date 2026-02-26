// ignore_for_file: unused_element, unnecessary_cast

class GetFleetScalingConfigurationTargetTrackingScalingConfig {
  /// The metric type to determine auto-scaling.
  final String metricType;

  /// The value of<span pulumi-lang-nodejs=" metricType " pulumi-lang-dotnet=" MetricType " pulumi-lang-go=" metricType " pulumi-lang-python=" metric_type " pulumi-lang-yaml=" metricType " pulumi-lang-java=" metricType "> metric_type </span>when to start scaling.
  final double targetValue;

  GetFleetScalingConfigurationTargetTrackingScalingConfig({
    required this.metricType,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricType'] = metricType;
    map['targetValue'] = targetValue;
    return map;
  }

  factory GetFleetScalingConfigurationTargetTrackingScalingConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFleetScalingConfigurationTargetTrackingScalingConfig(
      metricType: map['metricType'] as String,
      targetValue: map['targetValue'] as double,
    );
  }
}
