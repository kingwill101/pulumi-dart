// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow triggerers.
class TriggererResource {
  /// Optional. The number of triggerers.
  final int? count;

  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final double? cpu;

  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final double? memoryGb;

  /// Creates a new [TriggererResource].
  /// [count] Optional. The number of triggerers.
  /// [cpu] Optional. CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  TriggererResource({this.count, this.cpu, this.memoryGb});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
    };
  }

  factory TriggererResource.fromMap(Map<String, dynamic> map) {
    return TriggererResource(
      count: map['count'] == null ? null : map['count'] as int,
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
    );
  }
}
