// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric {
  /// Metric name for Read Pool Auto Scale.
  final String? metric;

  /// Target value for Read Pool Auto Scale.
  final double? targetValue;

  DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric({
    this.metric,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricValue = metric;
    if (metricValue != null) {
      map['metric'] = metricValue;
    }
    final targetValueValue = targetValue;
    if (targetValueValue != null) {
      map['targetValue'] = targetValueValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsReadPoolAutoScaleConfigTargetMetric(
      metric: map['metric'] == null ? null : map['metric'] as String,
      targetValue:
          map['targetValue'] == null ? null : map['targetValue'] as double,
    );
  }
}
