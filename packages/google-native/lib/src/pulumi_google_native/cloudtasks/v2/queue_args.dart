// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'app_engine_routing3.dart';
import 'http_target3.dart';
import 'rate_limits.dart';
import 'retry_config3.dart';
import 'stackdriver_logging_config.dart';

/// The set of arguments for Queue.
class QueueArgs {
  /// Overrides for task-level app_engine_routing. These settings apply only to App Engine tasks in this queue. Http tasks are not affected. If set, `app_engine_routing_override` is used for all App Engine tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final Input<AppEngineRouting3>? appEngineRoutingOverride;

  /// Modifies HTTP target for HTTP tasks.
  final Input<HttpTarget3>? httpTarget;
  final Input<String>? location;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  final Input<RateLimits>? rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final Input<RetryConfig3>? retryConfig;

  /// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  final Input<StackdriverLoggingConfig>? stackdriverLoggingConfig;

  QueueArgs({
    this.appEngineRoutingOverride,
    this.httpTarget,
    this.location,
    this.name,
    this.project,
    this.rateLimits,
    this.retryConfig,
    this.stackdriverLoggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineRoutingOverrideValue = appEngineRoutingOverride;
    if (appEngineRoutingOverrideValue != null) {
      map['appEngineRoutingOverride'] =
          Input.mapOptionalInputValue<AppEngineRouting3, Map<String, dynamic>>(
              appEngineRoutingOverrideValue, (value) => value.toMap());
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] =
          Input.mapOptionalInputValue<HttpTarget3, Map<String, dynamic>>(
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
          Input.mapOptionalInputValue<RateLimits, Map<String, dynamic>>(
              rateLimitsValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          Input.mapOptionalInputValue<RetryConfig3, Map<String, dynamic>>(
              retryConfigValue, (value) => value.toMap());
    }
    final stackdriverLoggingConfigValue = stackdriverLoggingConfig;
    if (stackdriverLoggingConfigValue != null) {
      map['stackdriverLoggingConfig'] = Input.mapOptionalInputValue<
              StackdriverLoggingConfig, Map<String, dynamic>>(
          stackdriverLoggingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      appEngineRoutingOverride: Input.asOptionalInput<AppEngineRouting3>(
          map['appEngineRoutingOverride']),
      httpTarget: Input.asOptionalInput<HttpTarget3>(map['httpTarget']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rateLimits: Input.asOptionalInput<RateLimits>(map['rateLimits']),
      retryConfig: Input.asOptionalInput<RetryConfig3>(map['retryConfig']),
      stackdriverLoggingConfig: Input.asOptionalInput<StackdriverLoggingConfig>(
          map['stackdriverLoggingConfig']),
    );
  }
}
