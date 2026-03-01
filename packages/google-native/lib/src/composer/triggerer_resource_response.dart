// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow triggerers.
class TriggererResourceResponse {
  /// Optional. The number of triggerers.
  final int count;

  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final double cpu;

  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final double memoryGb;

  /// Creates a new [TriggererResourceResponse].
  /// [count] Optional. The number of triggerers.
  /// [cpu] Optional. CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  TriggererResourceResponse({
    required this.count,
    required this.cpu,
    required this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'cpu': cpu, 'memoryGb': memoryGb};
  }

  factory TriggererResourceResponse.fromMap(Map<String, dynamic> map) {
    return TriggererResourceResponse(
      count: map['count'] as int,
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
    );
  }
}
