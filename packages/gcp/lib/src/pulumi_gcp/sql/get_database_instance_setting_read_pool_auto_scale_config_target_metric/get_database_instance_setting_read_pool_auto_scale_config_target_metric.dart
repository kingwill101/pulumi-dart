// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final String metric;

  /// Target value for Read Pool Auto Scale.
  final double targetValue;

  GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric({
    required this.metric,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metric'] = metric;
    map['targetValue'] = targetValue;
    return map;
  }

  factory GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingReadPoolAutoScaleConfigTargetMetric(
      metric: map['metric'] as String,
      targetValue: map['targetValue'] as double,
    );
  }
}
