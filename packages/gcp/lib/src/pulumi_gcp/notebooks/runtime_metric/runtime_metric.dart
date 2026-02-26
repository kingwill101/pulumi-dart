// ignore_for_file: unused_element, unnecessary_cast

class RuntimeMetric {
  /// (Output)
  /// Contains runtime daemon metrics, such as OS and kernels and
  /// sessions stats.
  final Map<String, String>? systemMetrics;

  RuntimeMetric({
    this.systemMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final systemMetricsValue = systemMetrics;
    if (systemMetricsValue != null) {
      map['systemMetrics'] = systemMetricsValue;
    }
    return map;
  }

  factory RuntimeMetric.fromMap(Map<String, dynamic> map) {
    return RuntimeMetric(
      systemMetrics: map['systemMetrics'] == null
          ? null
          : (map['systemMetrics'] as Map).cast<String, String>(),
    );
  }
}
