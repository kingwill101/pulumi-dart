// ignore_for_file: unused_element, unnecessary_cast

/// Contains runtime daemon metrics, such as OS and kernels and sessions stats.
class RuntimeMetricsResponse {
  /// The system metrics.
  final Map<String, String> systemMetrics;

  /// Creates a new [RuntimeMetricsResponse].
  /// [systemMetrics] The system metrics.
  RuntimeMetricsResponse({
    required this.systemMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['systemMetrics'] = systemMetrics;
    return map;
  }

  factory RuntimeMetricsResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeMetricsResponse(
      systemMetrics: (map['systemMetrics'] as Map).cast<String, String>(),
    );
  }
}
