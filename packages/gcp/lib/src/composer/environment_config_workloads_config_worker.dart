// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentConfigWorkloadsConfigWorker {
  /// CPU request and limit for a single Airflow worker replica.
  final double? cpu;

  /// Maximum number of workers for autoscaling.
  final int? maxCount;

  /// Memory (GB) request and limit for a single Airflow worker replica.
  final double? memoryGb;

  /// Minimum number of workers for autoscaling.
  final int? minCount;

  /// Storage (GB) request and limit for a single Airflow worker replica.
  final double? storageGb;

  /// Creates a new [EnvironmentConfigWorkloadsConfigWorker].
  /// [cpu] CPU request and limit for a single Airflow worker replica.
  /// [maxCount] Maximum number of workers for autoscaling.
  /// [memoryGb] Memory (GB) request and limit for a single Airflow worker replica.
  /// [minCount] Minimum number of workers for autoscaling.
  /// [storageGb] Storage (GB) request and limit for a single Airflow worker replica.
  EnvironmentConfigWorkloadsConfigWorker({
    this.cpu,
    this.maxCount,
    this.memoryGb,
    this.minCount,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final maxCountValue = maxCount;
    if (maxCountValue != null) {
      map['maxCount'] = maxCountValue;
    }
    final memoryGbValue = memoryGb;
    if (memoryGbValue != null) {
      map['memoryGb'] = memoryGbValue;
    }
    final minCountValue = minCount;
    if (minCountValue != null) {
      map['minCount'] = minCountValue;
    }
    final storageGbValue = storageGb;
    if (storageGbValue != null) {
      map['storageGb'] = storageGbValue;
    }
    return map;
  }

  factory EnvironmentConfigWorkloadsConfigWorker.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigWorkloadsConfigWorker(
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      minCount: map['minCount'] == null ? null : map['minCount'] as int,
      storageGb: map['storageGb'] == null ? null : map['storageGb'] as double,
    );
  }
}
