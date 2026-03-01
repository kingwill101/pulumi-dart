// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigWorkloadsConfigScheduler {
  /// The number of schedulers.
  final int count;

  /// CPU request and limit for a single Airflow scheduler replica
  final double cpu;

  /// Memory (GB) request and limit for a single Airflow scheduler replica.
  final double memoryGb;

  /// Storage (GB) request and limit for a single Airflow scheduler replica.
  final double storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigScheduler].
  /// [count] The number of schedulers.
  /// [cpu] CPU request and limit for a single Airflow scheduler replica
  /// [memoryGb] Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Storage (GB) request and limit for a single Airflow scheduler replica.
  GetEnvironmentConfigWorkloadsConfigScheduler({
    required this.count,
    required this.cpu,
    required this.memoryGb,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'cpu': cpu,
      'memoryGb': memoryGb,
      'storageGb': storageGb,
    };
  }

  factory GetEnvironmentConfigWorkloadsConfigScheduler.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnvironmentConfigWorkloadsConfigScheduler(
      count: map['count'] as int,
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
      storageGb: map['storageGb'] as double,
    );
  }
}
