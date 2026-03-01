// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigWorkloadsConfigTriggerer {
  /// The number of triggerers.
  final int count;

  /// CPU request and limit for a single Airflow triggerer replica.
  final double cpu;

  /// Memory (GB) request and limit for a single Airflow triggerer replica.
  final double memoryGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigTriggerer].
  /// [count] The number of triggerers.
  /// [cpu] CPU request and limit for a single Airflow triggerer replica.
  /// [memoryGb] Memory (GB) request and limit for a single Airflow triggerer replica.
  GetEnvironmentConfigWorkloadsConfigTriggerer({
    required this.count,
    required this.cpu,
    required this.memoryGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'cpu': cpu, 'memoryGb': memoryGb};
  }

  factory GetEnvironmentConfigWorkloadsConfigTriggerer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnvironmentConfigWorkloadsConfigTriggerer(
      count: map['count'] as int,
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
    );
  }
}
