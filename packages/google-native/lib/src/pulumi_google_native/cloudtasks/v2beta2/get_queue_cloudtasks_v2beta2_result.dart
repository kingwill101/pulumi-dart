// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_http_target_response_cloudtasks_v2beta2.dart';
import 'http_target_response_cloudtasks_v2beta2.dart';
import 'queue_stats_response.dart';
import 'rate_limits_response_cloudtasks_v2beta2.dart';
import 'retry_config_response_cloudtasks_v2beta2.dart';

/// Result data returned by getQueue.
class GetQueueCloudtasksV2beta2Result {
  /// App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  final AppEngineHttpTargetResponseCloudtasksV2beta2 appEngineHttpTarget;

  /// An http_target is used to override the target values for HTTP tasks.
  final HttpTargetResponseCloudtasksV2beta2 httpTarget;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final String name;

  /// Pull target. A pull queue is a queue that has a PullTarget.
  final Map<String, dynamic> pullTarget;

  /// The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
  final String purgeTime;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  final RateLimitsResponseCloudtasksV2beta2 rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final RetryConfigResponseCloudtasksV2beta2 retryConfig;

  /// The state of the queue. `state` can only be changed by called PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change `state`.
  final String state;

  /// The realtime, informational statistics for a queue. In order to receive the statistics the caller should include this field in the FieldMask.
  final QueueStatsResponse stats;

  /// The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  final String taskTtl;

  /// The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  final String tombstoneTtl;

  GetQueueCloudtasksV2beta2Result({
    required this.appEngineHttpTarget,
    required this.httpTarget,
    required this.name,
    required this.pullTarget,
    required this.purgeTime,
    required this.rateLimits,
    required this.retryConfig,
    required this.state,
    required this.stats,
    required this.taskTtl,
    required this.tombstoneTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appEngineHttpTarget'] = appEngineHttpTarget.toMap();
    map['httpTarget'] = httpTarget.toMap();
    map['name'] = name;
    map['pullTarget'] = pullTarget;
    map['purgeTime'] = purgeTime;
    map['rateLimits'] = rateLimits.toMap();
    map['retryConfig'] = retryConfig.toMap();
    map['state'] = state;
    map['stats'] = stats.toMap();
    map['taskTtl'] = taskTtl;
    map['tombstoneTtl'] = tombstoneTtl;
    return map;
  }

  factory GetQueueCloudtasksV2beta2Result.fromMap(Map<String, dynamic> map) {
    return GetQueueCloudtasksV2beta2Result(
      appEngineHttpTarget: AppEngineHttpTargetResponseCloudtasksV2beta2.fromMap(
          (map['appEngineHttpTarget'] as Map).cast<String, dynamic>()),
      httpTarget: HttpTargetResponseCloudtasksV2beta2.fromMap(
          (map['httpTarget'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      pullTarget: (map['pullTarget'] as Map).cast<String, dynamic>(),
      purgeTime: map['purgeTime'] as String,
      rateLimits: RateLimitsResponseCloudtasksV2beta2.fromMap(
          (map['rateLimits'] as Map).cast<String, dynamic>()),
      retryConfig: RetryConfigResponseCloudtasksV2beta2.fromMap(
          (map['retryConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stats: QueueStatsResponse.fromMap(
          (map['stats'] as Map).cast<String, dynamic>()),
      taskTtl: map['taskTtl'] as String,
      tombstoneTtl: map['tombstoneTtl'] as String,
    );
  }
}
