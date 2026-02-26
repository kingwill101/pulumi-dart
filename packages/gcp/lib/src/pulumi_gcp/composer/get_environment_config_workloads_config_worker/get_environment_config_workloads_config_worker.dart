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

  GetEnvironmentConfigWorkloadsConfigWorker({
    required this.cpu,
    required this.maxCount,
    required this.memoryGb,
    required this.minCount,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpu'] = cpu;
    map['maxCount'] = maxCount;
    map['memoryGb'] = memoryGb;
    map['minCount'] = minCount;
    map['storageGb'] = storageGb;
    return map;
  }

  factory GetEnvironmentConfigWorkloadsConfigWorker.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigWorker(
      cpu: map['cpu'] as double,
      maxCount: map['maxCount'] as int,
      memoryGb: map['memoryGb'] as double,
      minCount: map['minCount'] as int,
      storageGb: map['storageGb'] as double,
    );
  }
}
