// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentConfigWorkloadsConfigWorker {
  /// CPU request and limit for a single Airflow worker replica.
  final double cpu;
  /// Maximum number of workers for autoscaling.
  final int maxCount;
  /// Memory (GB) request and limit for a single Airflow worker replica.
  final double memoryGb;
  /// Minimum number of workers for autoscaling.
  final int minCount;
  /// Storage (GB) request and limit for a single Airflow worker replica.
  final double storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigWorker].
  /// [cpu] CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Maximum number of workers for autoscaling.
  /// [memoryGb] Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Minimum number of workers for autoscaling.
  /// [storageGb] Storage (GB) request and limit for a single Airflow worker replica.
  GetEnvironmentConfigWorkloadsConfigWorker({
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

  factory GetEnvironmentConfigWorkloadsConfigWorker.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigWorker(
      cpu: map['cpu'] as double,
      maxCount: map['maxCount'] as int,
      memoryGb: map['memoryGb'] as double,
      minCount: map['minCount'] as int,
      storageGb: map['storageGb'] as double,
    );
  }
}

