// ignore_for_file: unused_element, unnecessary_cast

/// Batch compute resources associated with the task.
class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources {
  /// Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2
  final int? executorsCount;

  /// Optional. Max configurable executors. If max_executors_count > executors_count, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. Default=1000
  final int? maxExecutorsCount;

  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources({
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

  factory GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources(
      executorsCount:
          map['executorsCount'] == null ? null : map['executorsCount'] as int,
      maxExecutorsCount: map['maxExecutorsCount'] == null
          ? null
          : map['maxExecutorsCount'] as int,
    );
  }
}
