// ignore_for_file: unused_element, unnecessary_cast

class GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig {
  /// The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  final double maxScalingFactor;

  /// The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  final double minScalingFactor;

  GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig({
    required this.maxScalingFactor,
    required this.minScalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxScalingFactor'] = maxScalingFactor;
    map['minScalingFactor'] = minScalingFactor;
    return map;
  }

  factory GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap(
      Map<String, dynamic> map) {
    return GetMetastoreServiceScalingConfigAutoscalingConfigLimitConfig(
      maxScalingFactor: map['maxScalingFactor'] as double,
      minScalingFactor: map['minScalingFactor'] as double,
    );
  }
}
