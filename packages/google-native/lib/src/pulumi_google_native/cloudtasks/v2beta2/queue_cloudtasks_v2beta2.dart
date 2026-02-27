import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_target_response_cloudtasks_v2beta2.dart';
import 'http_target_response_cloudtasks_v2beta2.dart';
import 'queue_cloudtasks_v2beta2_args.dart';
import 'queue_stats_response.dart';
import 'rate_limits_response_cloudtasks_v2beta2.dart';
import 'retry_config_response_cloudtasks_v2beta2.dart';

/// Creates a queue. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine `queue.yaml` or `queue.xml` file to manage your queues. Read [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using this method.
class QueueCloudtasksV2beta2 extends pulumi.CustomResource {
  /// App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  late final pulumi.Output<AppEngineHttpTargetResponseCloudtasksV2beta2>
      appEngineHttpTarget;

  /// An http_target is used to override the target values for HTTP tasks.
  late final pulumi.Output<HttpTargetResponseCloudtasksV2beta2> httpTarget;
  late final pulumi.Output<String> location;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Pull target. A pull queue is a queue that has a PullTarget.
  late final pulumi.Output<Map<String, dynamic>> pullTarget;

  /// The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
  late final pulumi.Output<String> purgeTime;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  late final pulumi.Output<RateLimitsResponseCloudtasksV2beta2> rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  late final pulumi.Output<RetryConfigResponseCloudtasksV2beta2> retryConfig;

  /// The state of the queue. `state` can only be changed by called PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change `state`.
  late final pulumi.Output<String> state;

  /// The realtime, informational statistics for a queue. In order to receive the statistics the caller should include this field in the FieldMask.
  late final pulumi.Output<QueueStatsResponse> stats;

  /// The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  late final pulumi.Output<String> taskTtl;

  /// The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  late final pulumi.Output<String> tombstoneTtl;

  QueueCloudtasksV2beta2(
    String name, {
    QueueCloudtasksV2beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudtasks/v2beta2:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appEngineHttpTarget =
        registerOutput<AppEngineHttpTargetResponseCloudtasksV2beta2>(
            'appEngineHttpTarget');
    this.httpTarget =
        registerOutput<HttpTargetResponseCloudtasksV2beta2>('httpTarget');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pullTarget = registerOutput<Map<String, dynamic>>('pullTarget');
    this.purgeTime = registerOutput<String>('purgeTime');
    this.rateLimits =
        registerOutput<RateLimitsResponseCloudtasksV2beta2>('rateLimits');
    this.retryConfig =
        registerOutput<RetryConfigResponseCloudtasksV2beta2>('retryConfig');
    this.state = registerOutput<String>('state');
    this.stats = registerOutput<QueueStatsResponse>('stats');
    this.taskTtl = registerOutput<String>('taskTtl');
    this.tombstoneTtl = registerOutput<String>('tombstoneTtl');
  }
}
