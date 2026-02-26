// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow triggerers.
class TriggererResourceResponse2 {
  /// Optional. The number of triggerers.
  final int count;

  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final double cpu;

  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final double memoryGb;

  TriggererResourceResponse2({
    required this.count,
    required this.cpu,
    required this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['cpu'] = cpu;
    map['memoryGb'] = memoryGb;
    return map;
  }

  factory TriggererResourceResponse2.fromMap(Map<String, dynamic> map) {
    return TriggererResourceResponse2(
      count: map['count'] as int,
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
    );
  }
}
