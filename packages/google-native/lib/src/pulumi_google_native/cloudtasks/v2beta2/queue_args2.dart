// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'app_engine_http_target3.dart';
import 'http_target4.dart';
import 'rate_limits2.dart';
import 'retry_config4.dart';

/// The set of arguments for Queue.
class QueueArgs2 {
  /// App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  final Input<AppEngineHttpTarget3>? appEngineHttpTarget;

  /// An http_target is used to override the target values for HTTP tasks.
  final Input<HttpTarget4>? httpTarget;
  final Input<String>? location;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// Pull target. A pull queue is a queue that has a PullTarget.
  final Input<Map<String, dynamic>>? pullTarget;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  final Input<RateLimits2>? rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final Input<RetryConfig4>? retryConfig;

  /// The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  final Input<String>? taskTtl;

  /// The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  final Input<String>? tombstoneTtl;

  QueueArgs2({
    this.appEngineHttpTarget,
    this.httpTarget,
    this.location,
    this.name,
    this.project,
    this.pullTarget,
    this.rateLimits,
    this.retryConfig,
    this.taskTtl,
    this.tombstoneTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpTargetValue = appEngineHttpTarget;
    if (appEngineHttpTargetValue != null) {
      map['appEngineHttpTarget'] = Input.mapOptionalInputValue<
              AppEngineHttpTarget3, Map<String, dynamic>>(
          appEngineHttpTargetValue, (value) => value.toMap());
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] =
          Input.mapOptionalInputValue<HttpTarget4, Map<String, dynamic>>(
              httpTargetValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pullTargetValue = pullTarget;
    if (pullTargetValue != null) {
      map['pullTarget'] = pullTargetValue;
    }
    final rateLimitsValue = rateLimits;
    if (rateLimitsValue != null) {
      map['rateLimits'] =
          Input.mapOptionalInputValue<RateLimits2, Map<String, dynamic>>(
              rateLimitsValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          Input.mapOptionalInputValue<RetryConfig4, Map<String, dynamic>>(
              retryConfigValue, (value) => value.toMap());
    }
    final taskTtlValue = taskTtl;
    if (taskTtlValue != null) {
      map['taskTtl'] = taskTtlValue;
    }
    final tombstoneTtlValue = tombstoneTtl;
    if (tombstoneTtlValue != null) {
      map['tombstoneTtl'] = tombstoneTtlValue;
    }
    return map;
  }

  factory QueueArgs2.fromMap(Map<String, dynamic> map) {
    return QueueArgs2(
      appEngineHttpTarget: Input.asOptionalInput<AppEngineHttpTarget3>(
          map['appEngineHttpTarget']),
      httpTarget: Input.asOptionalInput<HttpTarget4>(map['httpTarget']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pullTarget:
          Input.asOptionalInput<Map<String, dynamic>>(map['pullTarget']),
      rateLimits: Input.asOptionalInput<RateLimits2>(map['rateLimits']),
      retryConfig: Input.asOptionalInput<RetryConfig4>(map['retryConfig']),
      taskTtl: Input.asOptionalInput<String>(map['taskTtl']),
      tombstoneTtl: Input.asOptionalInput<String>(map['tombstoneTtl']),
    );
  }
}
