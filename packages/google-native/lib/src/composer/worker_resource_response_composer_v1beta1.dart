// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow workers.
class WorkerResourceResponseComposerV1beta1 {
  /// Optional. CPU request and limit for a single Airflow worker replica.
  final double cpu;

  /// Optional. Maximum number of workers for autoscaling.
  final int maxCount;

  /// Optional. Memory (GB) request and limit for a single Airflow worker replica.
  final double memoryGb;

  /// Optional. Minimum number of workers for autoscaling.
  final int minCount;

  /// Optional. Storage (GB) request and limit for a single Airflow worker replica.
  final double storageGb;

  /// Creates a new [WorkerResourceResponseComposerV1beta1].
  /// [cpu] Optional. CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Optional. Maximum number of workers for autoscaling.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Optional. Minimum number of workers for autoscaling.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow worker replica.
  WorkerResourceResponseComposerV1beta1({
    required this.cpu,
    required this.maxCount,
    required this.memoryGb,
    required this.minCount,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'maxCount': maxCount,
      'memoryGb': memoryGb,
      'minCount': minCount,
      'storageGb': storageGb,
    };
  }

  factory WorkerResourceResponseComposerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkerResourceResponseComposerV1beta1(
      cpu: map['cpu'] as double,
      maxCount: map['maxCount'] as int,
      memoryGb: map['memoryGb'] as double,
      minCount: map['minCount'] as int,
      storageGb: map['storageGb'] as double,
    );
  }
}
