// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_routing.dart';
import 'http_target.dart';
import 'rate_limits.dart';
import 'retry_config.dart';
import 'stackdriver_logging_config.dart';

/// {@template pulumi_cloudtasks_v2_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2_queue_args_doc}
class QueueArgs {
  /// Overrides for task-level app_engine_routing. These settings apply only to App Engine tasks in this queue. Http tasks are not affected. If set, `app_engine_routing_override` is used for all App Engine tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final pulumi.Input<AppEngineRouting>? appEngineRoutingOverride;

  /// Modifies HTTP target for HTTP tasks.
  final pulumi.Input<HttpTarget>? httpTarget;
  final pulumi.Input<String>? location;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  final pulumi.Input<RateLimits>? rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final pulumi.Input<RetryConfig>? retryConfig;

  /// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  final pulumi.Input<StackdriverLoggingConfig>? stackdriverLoggingConfig;

  /// Creates a new [QueueArgs].
  /// [appEngineRoutingOverride] Overrides for task-level app_engine_routing. These settings apply only to App Engine tasks in this queue. Http tasks are not affected. If set, `app_engine_routing_override` is used for all App Engine tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  /// [httpTarget] Modifies HTTP target for HTTP tasks.
  /// [location] Optional.
  /// [name] Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  /// [project] Optional.
  /// [rateLimits] Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  /// [retryConfig] Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  /// [stackdriverLoggingConfig] Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  QueueArgs({
    AppEngineRouting? appEngineRoutingOverride,
    HttpTarget? httpTarget,
    String? location,
    String? name,
    String? project,
    RateLimits? rateLimits,
    RetryConfig? retryConfig,
    StackdriverLoggingConfig? stackdriverLoggingConfig,
  })  : appEngineRoutingOverride =
            pulumi.Input.asOptionalInput<AppEngineRouting>(
                appEngineRoutingOverride),
        httpTarget = pulumi.Input.asOptionalInput<HttpTarget>(httpTarget),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rateLimits = pulumi.Input.asOptionalInput<RateLimits>(rateLimits),
        retryConfig = pulumi.Input.asOptionalInput<RetryConfig>(retryConfig),
        stackdriverLoggingConfig =
            pulumi.Input.asOptionalInput<StackdriverLoggingConfig>(
                stackdriverLoggingConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineRoutingOverrideValue = appEngineRoutingOverride;
    if (appEngineRoutingOverrideValue != null) {
      map['appEngineRoutingOverride'] = pulumi.Input.mapOptionalInputValue<
              AppEngineRouting, Map<String, dynamic>>(
          appEngineRoutingOverrideValue, (value) => value.toMap());
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] =
          pulumi.Input.mapOptionalInputValue<HttpTarget, Map<String, dynamic>>(
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
          pulumi.Input.mapOptionalInputValue<RateLimits, Map<String, dynamic>>(
              rateLimitsValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          pulumi.Input.mapOptionalInputValue<RetryConfig, Map<String, dynamic>>(
              retryConfigValue, (value) => value.toMap());
    }
    final stackdriverLoggingConfigValue = stackdriverLoggingConfig;
    if (stackdriverLoggingConfigValue != null) {
      map['stackdriverLoggingConfig'] = pulumi.Input.mapOptionalInputValue<
              StackdriverLoggingConfig, Map<String, dynamic>>(
          stackdriverLoggingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      appEngineRoutingOverride: map['appEngineRoutingOverride'] == null
          ? null
          : AppEngineRouting.fromMap(
              (map['appEngineRoutingOverride'] as Map).cast<String, dynamic>()),
      httpTarget: map['httpTarget'] == null
          ? null
          : HttpTarget.fromMap(
              (map['httpTarget'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rateLimits: map['rateLimits'] == null
          ? null
          : RateLimits.fromMap(
              (map['rateLimits'] as Map).cast<String, dynamic>()),
      retryConfig: map['retryConfig'] == null
          ? null
          : RetryConfig.fromMap(
              (map['retryConfig'] as Map).cast<String, dynamic>()),
      stackdriverLoggingConfig: map['stackdriverLoggingConfig'] == null
          ? null
          : StackdriverLoggingConfig.fromMap(
              (map['stackdriverLoggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
