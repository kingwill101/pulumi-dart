// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_target.dart';
import 'http_target_cloudtasks_v2beta2.dart';
import 'rate_limits_cloudtasks_v2beta2.dart';
import 'retry_config_cloudtasks_v2beta2.dart';

/// {@template pulumi_cloudtasks_v2beta2_queue_cloudtasks_v2beta2_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta2_queue_cloudtasks_v2beta2_args_doc}
class QueueCloudtasksV2beta2Args {
  /// App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  final pulumi.Input<AppEngineHttpTarget>? appEngineHttpTarget;

  /// An http_target is used to override the target values for HTTP tasks.
  final pulumi.Input<HttpTargetCloudtasksV2beta2>? httpTarget;
  final pulumi.Input<String>? location;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Pull target. A pull queue is a queue that has a PullTarget.
  final pulumi.Input<Map<String, dynamic>>? pullTarget;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  final pulumi.Input<RateLimitsCloudtasksV2beta2>? rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final pulumi.Input<RetryConfigCloudtasksV2beta2>? retryConfig;

  /// The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  final pulumi.Input<String>? taskTtl;

  /// The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  final pulumi.Input<String>? tombstoneTtl;

  /// Creates a new [QueueCloudtasksV2beta2Args].
  /// [appEngineHttpTarget] App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  /// [httpTarget] An http_target is used to override the target values for HTTP tasks.
  /// [location] Optional.
  /// [name] Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  /// [project] Optional.
  /// [pullTarget] Pull target. A pull queue is a queue that has a PullTarget.
  /// [rateLimits] Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  /// [retryConfig] Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  /// [taskTtl] The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  /// [tombstoneTtl] The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  QueueCloudtasksV2beta2Args({
    AppEngineHttpTarget? appEngineHttpTarget,
    HttpTargetCloudtasksV2beta2? httpTarget,
    String? location,
    String? name,
    String? project,
    Map<String, dynamic>? pullTarget,
    RateLimitsCloudtasksV2beta2? rateLimits,
    RetryConfigCloudtasksV2beta2? retryConfig,
    String? taskTtl,
    String? tombstoneTtl,
  }) : appEngineHttpTarget = pulumi.Input.asOptionalInput<AppEngineHttpTarget>(
         appEngineHttpTarget,
       ),
       httpTarget = pulumi.Input.asOptionalInput<HttpTargetCloudtasksV2beta2>(
         httpTarget,
       ),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       pullTarget = pulumi.Input.asOptionalInput<Map<String, dynamic>>(
         pullTarget,
       ),
       rateLimits = pulumi.Input.asOptionalInput<RateLimitsCloudtasksV2beta2>(
         rateLimits,
       ),
       retryConfig = pulumi.Input.asOptionalInput<RetryConfigCloudtasksV2beta2>(
         retryConfig,
       ),
       taskTtl = pulumi.Input.asOptionalInput<String>(taskTtl),
       tombstoneTtl = pulumi.Input.asOptionalInput<String>(tombstoneTtl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpTarget':
          ?pulumi.Input.mapOptionalInputValue<
            AppEngineHttpTarget,
            Map<String, dynamic>
          >(appEngineHttpTarget, (value) => value.toMap()),
      'httpTarget':
          ?pulumi.Input.mapOptionalInputValue<
            HttpTargetCloudtasksV2beta2,
            Map<String, dynamic>
          >(httpTarget, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pullTarget': ?pullTarget,
      'rateLimits':
          ?pulumi.Input.mapOptionalInputValue<
            RateLimitsCloudtasksV2beta2,
            Map<String, dynamic>
          >(rateLimits, (value) => value.toMap()),
      'retryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RetryConfigCloudtasksV2beta2,
            Map<String, dynamic>
          >(retryConfig, (value) => value.toMap()),
      'taskTtl': ?taskTtl,
      'tombstoneTtl': ?tombstoneTtl,
    };
  }

  factory QueueCloudtasksV2beta2Args.fromMap(Map<String, dynamic> map) {
    return QueueCloudtasksV2beta2Args(
      appEngineHttpTarget: map['appEngineHttpTarget'] == null
          ? null
          : AppEngineHttpTarget.fromMap(
              (map['appEngineHttpTarget'] as Map).cast<String, dynamic>(),
            ),
      httpTarget: map['httpTarget'] == null
          ? null
          : HttpTargetCloudtasksV2beta2.fromMap(
              (map['httpTarget'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pullTarget: map['pullTarget'] == null
          ? null
          : (map['pullTarget'] as Map).cast<String, dynamic>(),
      rateLimits: map['rateLimits'] == null
          ? null
          : RateLimitsCloudtasksV2beta2.fromMap(
              (map['rateLimits'] as Map).cast<String, dynamic>(),
            ),
      retryConfig: map['retryConfig'] == null
          ? null
          : RetryConfigCloudtasksV2beta2.fromMap(
              (map['retryConfig'] as Map).cast<String, dynamic>(),
            ),
      taskTtl: map['taskTtl'] == null ? null : map['taskTtl'] as String,
      tombstoneTtl: map['tombstoneTtl'] == null
          ? null
          : map['tombstoneTtl'] as String,
    );
  }
}
