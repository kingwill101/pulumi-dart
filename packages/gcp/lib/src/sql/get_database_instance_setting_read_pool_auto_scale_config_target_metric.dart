// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final String metric;

  /// Target value for Read Pool Auto Scale.
  final double targetValue;

  /// Creates a new [GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric].
  /// [metric] Metric name for Read Pool Auto Scale.
  /// [targetValue] Target value for Read Pool Auto Scale.
  GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric({
    required this.metric,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metric': metric, 'targetValue': targetValue};
  }

  factory GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric(
      metric: map['metric'] as String,
      targetValue: map['targetValue'] as double,
    );
  }
}
