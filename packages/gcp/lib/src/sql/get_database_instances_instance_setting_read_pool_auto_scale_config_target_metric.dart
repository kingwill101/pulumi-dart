// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final String metric;
  /// Target value for Read Pool Auto Scale.
  final double targetValue;

  /// Creates a new [GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric].
  /// [metric] Metric name for Read Pool Auto Scale.
  /// [targetValue] Target value for Read Pool Auto Scale.
  GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric({
    required this.metric,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'targetValue': targetValue,
    };
  }

  factory GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingReadPoolAutoScaleConfigTargetMetric(
      metric: map['metric'] as String,
      targetValue: map['targetValue'] as double,
    );
  }
}

