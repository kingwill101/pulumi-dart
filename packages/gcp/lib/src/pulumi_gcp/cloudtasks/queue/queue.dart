import 'package:pulumi/pulumi.dart';
import '../queue_app_engine_routing_override/queue_app_engine_routing_override.dart';
import '../queue_http_target/queue_http_target.dart';
import '../queue_rate_limits/queue_rate_limits.dart';
import '../queue_retry_config/queue_retry_config.dart';
import '../queue_stackdriver_logging_config/queue_stackdriver_logging_config.dart';
import 'queue_args.dart';

/// A named resource to which messages are sent by publishers.
///
///
///
/// ## Example Usage
///
/// ### Queue Basic
///
///
///
/// ### Cloud Tasks Queue Advanced
///
///
///
/// ### Cloud Tasks Queue Http Target Oidc
///
///
///
/// ### Cloud Tasks Queue Http Target Oauth
///
///
///
///
/// ## Import
///
/// Queue can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/queues/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Queue can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queue:Queue default projects/{{project}}/locations/{{location}}/queues/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queue:Queue default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudtasks/queue:Queue default {{location}}/{{name}}
/// ```
class Queue extends CustomResource {
  /// Overrides for task-level appEngineRouting. These settings apply only
  /// to App Engine tasks in this queue
  /// Structure is documented below.
  late final Output<QueueAppEngineRoutingOverride?> appEngineRoutingOverride;

  /// The desired state of the queue. Use this to pause and resume the queue.
  ///
  /// * RUNNING: The queue is running. Tasks can be dispatched.
  /// * PAUSED: The queue is paused. Tasks are not dispatched but can be added to the queue.
  late final Output<String?> desiredState;

  /// Modifies HTTP target for HTTP tasks.
  /// Structure is documented below.
  late final Output<QueueHttpTarget?> httpTarget;

  /// The location of the queue
  late final Output<String> location;

  /// The queue name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Rate limits for task dispatches.
  /// The queue's actual dispatch rate is the result of:
  /// * Number of tasks in the queue
  /// * User-specified throttling: rateLimits, retryConfig, and the queue's state.
  /// * System throttling due to 429 (Too Many Requests) or 503 (Service
  /// Unavailable) responses from the worker, high error rates, or to
  /// smooth sudden large traffic spikes.
  /// Structure is documented below.
  late final Output<QueueRateLimits> rateLimits;

  /// Settings that determine the retry behavior.
  /// Structure is documented below.
  late final Output<QueueRetryConfig> retryConfig;

  /// Configuration options for writing logs to Stackdriver Logging.
  /// Structure is documented below.
  late final Output<QueueStackdriverLoggingConfig?> stackdriverLoggingConfig;

  /// The current state of the queue.
  late final Output<String> state;

  Queue(
    String name, {
    QueueArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudtasks/queue:Queue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appEngineRoutingOverride =
        registerOutput<QueueAppEngineRoutingOverride?>(
            'appEngineRoutingOverride');
    this.desiredState = registerOutput<String?>('desiredState');
    this.httpTarget = registerOutput<QueueHttpTarget?>('httpTarget');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rateLimits = registerOutput<QueueRateLimits>('rateLimits');
    this.retryConfig = registerOutput<QueueRetryConfig>('retryConfig');
    this.stackdriverLoggingConfig =
        registerOutput<QueueStackdriverLoggingConfig?>(
            'stackdriverLoggingConfig');
    this.state = registerOutput<String>('state');
  }
}
