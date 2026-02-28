// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow schedulers.
class SchedulerResource {
  /// Optional. The number of schedulers.
  final int? count;

  /// Optional. CPU request and limit for a single Airflow scheduler replica.
  final double? cpu;

  /// Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  final double? memoryGb;

  /// Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  final double? storageGb;

  /// Creates a new [SchedulerResource].
  /// [count] Optional. The number of schedulers.
  /// [cpu] Optional. CPU request and limit for a single Airflow scheduler replica.
  /// [memoryGb] Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  /// [storageGb] Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  SchedulerResource({
    this.count,
    this.cpu,
    this.memoryGb,
    this.storageGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final memoryGbValue = memoryGb;
    if (memoryGbValue != null) {
      map['memoryGb'] = memoryGbValue;
    }
    final storageGbValue = storageGb;
    if (storageGbValue != null) {
      map['storageGb'] = storageGbValue;
    }
    return map;
  }

  factory SchedulerResource.fromMap(Map<String, dynamic> map) {
    return SchedulerResource(
      count: map['count'] == null ? null : map['count'] as int,
      cpu: map['cpu'] == null ? null : map['cpu'] as double,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      storageGb: map['storageGb'] == null ? null : map['storageGb'] as double,
    );
  }
}
