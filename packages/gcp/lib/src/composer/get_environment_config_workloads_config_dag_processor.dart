// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentConfigWorkloadsConfigDagProcessor {
  /// Number of DAG processors.
  final int count;
  /// CPU request and limit for DAG processor.
  final double cpu;
  /// Memory (GB) request and limit for DAG processor.
  final double memoryGb;
  /// Storage (GB) request and limit for DAG processor.
  final double storageGb;

  /// Creates a new [GetEnvironmentConfigWorkloadsConfigDagProcessor].
  /// [count] Number of DAG processors.
  /// [cpu] CPU request and limit for DAG processor.
  /// [memoryGb] Memory (GB) request and limit for DAG processor.
  /// [storageGb] Storage (GB) request and limit for DAG processor.
  GetEnvironmentConfigWorkloadsConfigDagProcessor({
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

  factory GetEnvironmentConfigWorkloadsConfigDagProcessor.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigWorkloadsConfigDagProcessor(
      count: map['count'] as int,
      cpu: map['cpu'] as double,
      memoryGb: map['memoryGb'] as double,
      storageGb: map['storageGb'] as double,
    );
  }
}

