// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for resources used by Airflow schedulers.
class SchedulerResourceResponseComposerV1beta1 {
  /// Optional. The number of schedulers.
  final int count;

  /// Optional. CPU request and limit for a single Airflow scheduler replica.
  final double cpu;

  /// Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
  final double memoryGb;

  /// Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
  final double storageGb;

  SchedulerResourceResponseComposerV1beta1({
    required this.count,
    required this.cpu,
    required this.memoryGb,
    required this.storageGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['cpu'] = cpu;
    map['memoryGb'] = memoryGb;
    map['storageGb'] = storageGb;
    return map;
  }

  factory SchedulerResourceResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SchedulerResourceResponseComposerV1beta1(
      count: map['count'] as int,
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
      storageGb: map['storageGb'] as double,
    );
  }
}
