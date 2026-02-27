// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'app_engine_http_queue.dart';
import 'http_target5.dart';
import 'queue_type.dart';
import 'rate_limits3.dart';
import 'retry_config5.dart';
import 'stackdriver_logging_config2.dart';

/// The set of arguments for Queue.
class QueueArgs3 {
  /// AppEngineHttpQueue settings apply only to App Engine tasks in this queue. Http tasks are not affected by this proto.
  final Input<AppEngineHttpQueue>? appEngineHttpQueue;

  /// Modifies HTTP target for HTTP tasks.
  final Input<HttpTarget5>? httpTarget;
  final Input<String>? location;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  final Input<RateLimits3>? rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final Input<RetryConfig5>? retryConfig;

  /// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  final Input<StackdriverLoggingConfig2>? stackdriverLoggingConfig;

  /// The maximum amount of time that a task will be retained in this queue. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The minimum value is 10 days. The maximum value is 10 years. The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). Queues created by Cloud Tasks have a default `task_ttl` of 31 days. . Queues created by queue.yaml/xml have a fixed `task_ttl` of the maximum duration, because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues.
  final Input<String>? taskTtl;

  /// The task tombstone time to live (TTL). After a task is deleted or executed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. The minimum value is 1 hour. The maximum value is 9 days. The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  final Input<String>? tombstoneTtl;

  /// Immutable. The type of a queue (push or pull). `Queue.type` is an immutable property of the queue that is set at the queue creation time. When left unspecified, the default value of `PUSH` is selected.
  final Input<QueueType>? type;

  QueueArgs3({
    this.appEngineHttpQueue,
    this.httpTarget,
    this.location,
    this.name,
    this.project,
    this.rateLimits,
    this.retryConfig,
    this.stackdriverLoggingConfig,
    this.taskTtl,
    this.tombstoneTtl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpQueueValue = appEngineHttpQueue;
    if (appEngineHttpQueueValue != null) {
      map['appEngineHttpQueue'] =
          Input.mapOptionalInputValue<AppEngineHttpQueue, Map<String, dynamic>>(
              appEngineHttpQueueValue, (value) => value.toMap());
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] =
          Input.mapOptionalInputValue<HttpTarget5, Map<String, dynamic>>(
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
    final rateLimitsValue = rateLimits;
    if (rateLimitsValue != null) {
      map['rateLimits'] =
          Input.mapOptionalInputValue<RateLimits3, Map<String, dynamic>>(
              rateLimitsValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          Input.mapOptionalInputValue<RetryConfig5, Map<String, dynamic>>(
              retryConfigValue, (value) => value.toMap());
    }
    final stackdriverLoggingConfigValue = stackdriverLoggingConfig;
    if (stackdriverLoggingConfigValue != null) {
      map['stackdriverLoggingConfig'] = Input.mapOptionalInputValue<
              StackdriverLoggingConfig2, Map<String, dynamic>>(
          stackdriverLoggingConfigValue, (value) => value.toMap());
    }
    final taskTtlValue = taskTtl;
    if (taskTtlValue != null) {
      map['taskTtl'] = taskTtlValue;
    }
    final tombstoneTtlValue = tombstoneTtl;
    if (tombstoneTtlValue != null) {
      map['tombstoneTtl'] = tombstoneTtlValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<QueueType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory QueueArgs3.fromMap(Map<String, dynamic> map) {
    return QueueArgs3(
      appEngineHttpQueue:
          Input.asOptionalInput<AppEngineHttpQueue>(map['appEngineHttpQueue']),
      httpTarget: Input.asOptionalInput<HttpTarget5>(map['httpTarget']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rateLimits: Input.asOptionalInput<RateLimits3>(map['rateLimits']),
      retryConfig: Input.asOptionalInput<RetryConfig5>(map['retryConfig']),
      stackdriverLoggingConfig:
          Input.asOptionalInput<StackdriverLoggingConfig2>(
              map['stackdriverLoggingConfig']),
      taskTtl: Input.asOptionalInput<String>(map['taskTtl']),
      tombstoneTtl: Input.asOptionalInput<String>(map['tombstoneTtl']),
      type: Input.asOptionalInput<QueueType>(map['type']),
    );
  }
}
