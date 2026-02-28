// ignore_for_file: unused_element, unnecessary_cast

class TaskSparkInfrastructureSpecBatch {
  /// Total number of job executors. Executor Count should be between 2 and 100. [Default=2]
  final int? executorsCount;

  /// Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000]
  final int? maxExecutorsCount;

  /// Creates a new [TaskSparkInfrastructureSpecBatch].
  /// [executorsCount] Total number of job executors. Executor Count should be between 2 and 100. [Default=2]
  /// [maxExecutorsCount] Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000]
  TaskSparkInfrastructureSpecBatch({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executorsCountValue = executorsCount;
    if (executorsCountValue != null) {
      map['executorsCount'] = executorsCountValue;
    }
    final maxExecutorsCountValue = maxExecutorsCount;
    if (maxExecutorsCountValue != null) {
      map['maxExecutorsCount'] = maxExecutorsCountValue;
    }
    return map;
  }

  factory TaskSparkInfrastructureSpecBatch.fromMap(Map<String, dynamic> map) {
    return TaskSparkInfrastructureSpecBatch(
      executorsCount:
          map['executorsCount'] == null ? null : map['executorsCount'] as int,
      maxExecutorsCount: map['maxExecutorsCount'] == null
          ? null
          : map['maxExecutorsCount'] as int,
    );
  }
}
