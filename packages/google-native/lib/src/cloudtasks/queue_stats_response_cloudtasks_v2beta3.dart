// ignore_for_file: unused_element, unnecessary_cast

/// Statistics for a queue.
class QueueStatsResponseCloudtasksV2beta3 {
  /// The number of requests that the queue has dispatched but has not received a reply for yet.
  final String concurrentDispatchesCount;

  /// The current maximum number of tasks per second executed by the queue. The maximum value of this variable is controlled by the RateLimits of the Queue. However, this value could be less to avoid overloading the endpoints tasks in the queue are targeting.
  final double effectiveExecutionRate;

  /// The number of tasks that the queue has dispatched and received a reply for during the last minute. This variable counts both successful and non-successful executions.
  final String executedLastMinuteCount;

  /// An estimation of the nearest time in the future where a task in the queue is scheduled to be executed.
  final String oldestEstimatedArrivalTime;

  /// An estimation of the number of tasks in the queue, that is, the tasks in the queue that haven't been executed, the tasks in the queue which the queue has dispatched but has not yet received a reply for, and the failed tasks that the queue is retrying.
  final String tasksCount;

  /// Creates a new [QueueStatsResponseCloudtasksV2beta3].
  /// [concurrentDispatchesCount] The number of requests that the queue has dispatched but has not received a reply for yet.
  /// [effectiveExecutionRate] The current maximum number of tasks per second executed by the queue. The maximum value of this variable is controlled by the RateLimits of the Queue. However, this value could be less to avoid overloading the endpoints tasks in the queue are targeting.
  /// [executedLastMinuteCount] The number of tasks that the queue has dispatched and received a reply for during the last minute. This variable counts both successful and non-successful executions.
  /// [oldestEstimatedArrivalTime] An estimation of the nearest time in the future where a task in the queue is scheduled to be executed.
  /// [tasksCount] An estimation of the number of tasks in the queue, that is, the tasks in the queue that haven't been executed, the tasks in the queue which the queue has dispatched but has not yet received a reply for, and the failed tasks that the queue is retrying.
  QueueStatsResponseCloudtasksV2beta3({
    required this.concurrentDispatchesCount,
    required this.effectiveExecutionRate,
    required this.executedLastMinuteCount,
    required this.oldestEstimatedArrivalTime,
    required this.tasksCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['concurrentDispatchesCount'] = concurrentDispatchesCount;
    map['effectiveExecutionRate'] = effectiveExecutionRate;
    map['executedLastMinuteCount'] = executedLastMinuteCount;
    map['oldestEstimatedArrivalTime'] = oldestEstimatedArrivalTime;
    map['tasksCount'] = tasksCount;
    return map;
  }

  factory QueueStatsResponseCloudtasksV2beta3.fromMap(
      Map<String, dynamic> map) {
    return QueueStatsResponseCloudtasksV2beta3(
      concurrentDispatchesCount: map['concurrentDispatchesCount'] as String,
      effectiveExecutionRate: map['effectiveExecutionRate'] as double,
      executedLastMinuteCount: map['executedLastMinuteCount'] as String,
      oldestEstimatedArrivalTime: map['oldestEstimatedArrivalTime'] as String,
      tasksCount: map['tasksCount'] as String,
    );
  }
}
