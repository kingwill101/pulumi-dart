// ignore_for_file: unused_element, unnecessary_cast

class MetastoreServiceScalingConfigAutoscalingConfigLimitConfig {
  /// The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  final double? maxScalingFactor;

  /// The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  final double? minScalingFactor;

  /// Creates a new [MetastoreServiceScalingConfigAutoscalingConfigLimitConfig].
  /// [maxScalingFactor] The maximum scaling factor that the service will autoscale to. The default value is 6.0.
  /// [minScalingFactor] The minimum scaling factor that the service will autoscale to. The default value is 0.1.
  MetastoreServiceScalingConfigAutoscalingConfigLimitConfig({
    this.maxScalingFactor,
    this.minScalingFactor,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxScalingFactorValue = maxScalingFactor;
    if (maxScalingFactorValue != null) {
      map['maxScalingFactor'] = maxScalingFactorValue;
    }
    final minScalingFactorValue = minScalingFactor;
    if (minScalingFactorValue != null) {
      map['minScalingFactor'] = minScalingFactorValue;
    }
    return map;
  }

  factory MetastoreServiceScalingConfigAutoscalingConfigLimitConfig.fromMap(
      Map<String, dynamic> map) {
    return MetastoreServiceScalingConfigAutoscalingConfigLimitConfig(
      maxScalingFactor: map['maxScalingFactor'] == null
          ? null
          : map['maxScalingFactor'] as double,
      minScalingFactor: map['minScalingFactor'] == null
          ? null
          : map['minScalingFactor'] as double,
    );
  }
}
