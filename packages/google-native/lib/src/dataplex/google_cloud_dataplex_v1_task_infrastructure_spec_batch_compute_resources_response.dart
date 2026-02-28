// ignore_for_file: unused_element, unnecessary_cast

/// Batch compute resources associated with the task.
class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse {
  /// Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2
  final int executorsCount;

  /// Optional. Max configurable executors. If max_executors_count > executors_count, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. Default=1000
  final int maxExecutorsCount;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse].
  /// [executorsCount] Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2
  /// [maxExecutorsCount] Optional. Max configurable executors. If max_executors_count > executors_count, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. Default=1000
  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse({
    required this.executorsCount,
    required this.maxExecutorsCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executorsCount'] = executorsCount;
    map['maxExecutorsCount'] = maxExecutorsCount;
    return map;
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResourcesResponse(
      executorsCount: map['executorsCount'] as int,
      maxExecutorsCount: map['maxExecutorsCount'] as int,
    );
  }
}
