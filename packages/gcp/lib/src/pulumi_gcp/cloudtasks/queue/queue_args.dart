// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../queue_app_engine_routing_override/queue_app_engine_routing_override.dart';
import '../queue_http_target/queue_http_target.dart';
import '../queue_rate_limits/queue_rate_limits.dart';
import '../queue_retry_config/queue_retry_config.dart';
import '../queue_stackdriver_logging_config/queue_stackdriver_logging_config.dart';

/// The set of arguments for Queue.
class QueueArgs {
  /// Overrides for task-level appEngineRouting. These settings apply only
  /// to App Engine tasks in this queue
  /// Structure is documented below.
  final Input<QueueAppEngineRoutingOverride>? appEngineRoutingOverride;

  /// The desired state of the queue. Use this to pause and resume the queue.
  ///
  /// * RUNNING: The queue is running. Tasks can be dispatched.
  /// * PAUSED: The queue is paused. Tasks are not dispatched but can be added to the queue.
  final Input<String>? desiredState;

  /// Modifies HTTP target for HTTP tasks.
  /// Structure is documented below.
  final Input<QueueHttpTarget>? httpTarget;

  /// The location of the queue
  final Input<String> location;

  /// The queue name.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Rate limits for task dispatches.
  /// The queue's actual dispatch rate is the result of:
  /// * Number of tasks in the queue
  /// * User-specified throttling: rateLimits, retryConfig, and the queue's state.
  /// * System throttling due to 429 (Too Many Requests) or 503 (Service
  /// Unavailable) responses from the worker, high error rates, or to
  /// smooth sudden large traffic spikes.
  /// Structure is documented below.
  final Input<QueueRateLimits>? rateLimits;

  /// Settings that determine the retry behavior.
  /// Structure is documented below.
  final Input<QueueRetryConfig>? retryConfig;

  /// Configuration options for writing logs to Stackdriver Logging.
  /// Structure is documented below.
  final Input<QueueStackdriverLoggingConfig>? stackdriverLoggingConfig;

  QueueArgs({
    this.appEngineRoutingOverride,
    this.desiredState,
    this.httpTarget,
    required this.location,
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
      map['appEngineRoutingOverride'] = Input.mapOptionalInputValue<
              QueueAppEngineRoutingOverride, Map<String, dynamic>>(
          appEngineRoutingOverrideValue, (value) => value.toMap());
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] =
          Input.mapOptionalInputValue<QueueHttpTarget, Map<String, dynamic>>(
              httpTargetValue, (value) => value.toMap());
    }
    map['location'] = location;
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
          Input.mapOptionalInputValue<QueueRateLimits, Map<String, dynamic>>(
              rateLimitsValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          Input.mapOptionalInputValue<QueueRetryConfig, Map<String, dynamic>>(
              retryConfigValue, (value) => value.toMap());
    }
    final stackdriverLoggingConfigValue = stackdriverLoggingConfig;
    if (stackdriverLoggingConfigValue != null) {
      map['stackdriverLoggingConfig'] = Input.mapOptionalInputValue<
              QueueStackdriverLoggingConfig, Map<String, dynamic>>(
          stackdriverLoggingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      appEngineRoutingOverride:
          Input.asOptionalInput<QueueAppEngineRoutingOverride>(
              map['appEngineRoutingOverride']),
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      httpTarget: Input.asOptionalInput<QueueHttpTarget>(map['httpTarget']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rateLimits: Input.asOptionalInput<QueueRateLimits>(map['rateLimits']),
      retryConfig: Input.asOptionalInput<QueueRetryConfig>(map['retryConfig']),
      stackdriverLoggingConfig:
          Input.asOptionalInput<QueueStackdriverLoggingConfig>(
              map['stackdriverLoggingConfig']),
    );
  }
}
