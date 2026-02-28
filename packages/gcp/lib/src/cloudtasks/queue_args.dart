// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_app_engine_routing_override.dart';
import 'queue_http_target.dart';
import 'queue_rate_limits.dart';
import 'queue_retry_config.dart';
import 'queue_stackdriver_logging_config.dart';

/// {@template pulumi_cloudtasks_queue_queue_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_queue_queue_args_doc}
class QueueArgs {
  /// Overrides for task-level appEngineRouting. These settings apply only
  /// to App Engine tasks in this queue
  /// Structure is documented below.
  final pulumi.Input<QueueAppEngineRoutingOverride>? appEngineRoutingOverride;

  /// The desired state of the queue. Use this to pause and resume the queue.
  ///
  /// * RUNNING: The queue is running. Tasks can be dispatched.
  /// * PAUSED: The queue is paused. Tasks are not dispatched but can be added to the queue.
  final pulumi.Input<String>? desiredState;

  /// Modifies HTTP target for HTTP tasks.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTarget>? httpTarget;

  /// The location of the queue
  final pulumi.Input<String> location;

  /// The queue name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Rate limits for task dispatches.
  /// The queue's actual dispatch rate is the result of:
  /// * Number of tasks in the queue
  /// * User-specified throttling: rateLimits, retryConfig, and the queue's state.
  /// * System throttling due to 429 (Too Many Requests) or 503 (Service
  /// Unavailable) responses from the worker, high error rates, or to
  /// smooth sudden large traffic spikes.
  /// Structure is documented below.
  final pulumi.Input<QueueRateLimits>? rateLimits;

  /// Settings that determine the retry behavior.
  /// Structure is documented below.
  final pulumi.Input<QueueRetryConfig>? retryConfig;

  /// Configuration options for writing logs to Stackdriver Logging.
  /// Structure is documented below.
  final pulumi.Input<QueueStackdriverLoggingConfig>? stackdriverLoggingConfig;

  /// Creates a new [QueueArgs].
  /// [appEngineRoutingOverride] Overrides for task-level appEngineRouting. These settings apply only
  /// [desiredState] The desired state of the queue. Use this to pause and resume the queue.
  /// [httpTarget] Modifies HTTP target for HTTP tasks.
  /// [location] The location of the queue
  /// [name] The queue name.
  /// [project] The ID of the project in which the resource belongs.
  /// [rateLimits] Rate limits for task dispatches.
  /// [retryConfig] Settings that determine the retry behavior.
  /// [stackdriverLoggingConfig] Configuration options for writing logs to Stackdriver Logging.
  QueueArgs({
    QueueAppEngineRoutingOverride? appEngineRoutingOverride,
    String? desiredState,
    QueueHttpTarget? httpTarget,
    required String location,
    String? name,
    String? project,
    QueueRateLimits? rateLimits,
    QueueRetryConfig? retryConfig,
    QueueStackdriverLoggingConfig? stackdriverLoggingConfig,
  })  : appEngineRoutingOverride =
            pulumi.Input.asOptionalInput<QueueAppEngineRoutingOverride>(
                appEngineRoutingOverride),
        desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
        httpTarget = pulumi.Input.asOptionalInput<QueueHttpTarget>(httpTarget),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        rateLimits = pulumi.Input.asOptionalInput<QueueRateLimits>(rateLimits),
        retryConfig =
            pulumi.Input.asOptionalInput<QueueRetryConfig>(retryConfig),
        stackdriverLoggingConfig =
            pulumi.Input.asOptionalInput<QueueStackdriverLoggingConfig>(
                stackdriverLoggingConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineRoutingOverrideValue = appEngineRoutingOverride;
    if (appEngineRoutingOverrideValue != null) {
      map['appEngineRoutingOverride'] = pulumi.Input.mapOptionalInputValue<
              QueueAppEngineRoutingOverride, Map<String, dynamic>>(
          appEngineRoutingOverrideValue, (value) => value.toMap());
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] = pulumi.Input.mapOptionalInputValue<QueueHttpTarget,
          Map<String, dynamic>>(httpTargetValue, (value) => value.toMap());
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
      map['rateLimits'] = pulumi.Input.mapOptionalInputValue<QueueRateLimits,
          Map<String, dynamic>>(rateLimitsValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] = pulumi.Input.mapOptionalInputValue<QueueRetryConfig,
          Map<String, dynamic>>(retryConfigValue, (value) => value.toMap());
    }
    final stackdriverLoggingConfigValue = stackdriverLoggingConfig;
    if (stackdriverLoggingConfigValue != null) {
      map['stackdriverLoggingConfig'] = pulumi.Input.mapOptionalInputValue<
              QueueStackdriverLoggingConfig, Map<String, dynamic>>(
          stackdriverLoggingConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory QueueArgs.fromMap(Map<String, dynamic> map) {
    return QueueArgs(
      appEngineRoutingOverride: map['appEngineRoutingOverride'] == null
          ? null
          : QueueAppEngineRoutingOverride.fromMap(
              (map['appEngineRoutingOverride'] as Map).cast<String, dynamic>()),
      desiredState:
          map['desiredState'] == null ? null : map['desiredState'] as String,
      httpTarget: map['httpTarget'] == null
          ? null
          : QueueHttpTarget.fromMap(
              (map['httpTarget'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rateLimits: map['rateLimits'] == null
          ? null
          : QueueRateLimits.fromMap(
              (map['rateLimits'] as Map).cast<String, dynamic>()),
      retryConfig: map['retryConfig'] == null
          ? null
          : QueueRetryConfig.fromMap(
              (map['retryConfig'] as Map).cast<String, dynamic>()),
      stackdriverLoggingConfig: map['stackdriverLoggingConfig'] == null
          ? null
          : QueueStackdriverLoggingConfig.fromMap(
              (map['stackdriverLoggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
