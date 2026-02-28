// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for resources used by Airflow triggerers.
class TriggererResourceComposerV1beta1 {
  /// Optional. The number of triggerers.
  final int? count;
  /// Optional. CPU request and limit for a single Airflow triggerer replica.
  final double? cpu;
  /// Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  final double? memoryGb;

  /// Creates a new [TriggererResourceComposerV1beta1].
  /// [count] Optional. The number of triggerers.
  /// [cpu] Optional. CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
  TriggererResourceComposerV1beta1({
    this.count,
    this.cpu,
    this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'cpu': ?cpu,
      'memoryGb': ?memoryGb,
    };
  }

  factory TriggererResourceComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return TriggererResourceComposerV1beta1(
      count: map['count'] == null ? null : map['count'] as int,
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
    );
  }
}

