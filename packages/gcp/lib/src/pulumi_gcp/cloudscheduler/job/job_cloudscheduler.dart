import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_app_engine_http_target/job_app_engine_http_target.dart';
import '../job_http_target/job_http_target.dart';
import '../job_pubsub_target/job_pubsub_target.dart';
import '../job_retry_config/job_retry_config.dart';
import 'job_cloudscheduler_args.dart';

/// A scheduled job that can publish a PubSub message or an HTTP request
/// every X interval of time, using a crontab format string.
///
///
/// To get more information about Job, see:
///
/// * [API documentation](https://cloud.google.com/scheduler/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/scheduler/)
///
/// ## Example Usage
///
/// ### Scheduler Job Pubsub
///
///
///
/// ### Scheduler Job Http
///
///
///
/// ### Scheduler Job Paused
///
///
///
/// ### Scheduler Job App Engine
///
///
///
/// ### Scheduler Job Oauth
///
///
///
/// ### Scheduler Job Oidc
///
///
///
///
/// ## Import
///
/// Job can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/jobs/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Job can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default projects/{{project}}/locations/{{region}}/jobs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudscheduler/job:Job default {{name}}
/// ```
class JobCloudscheduler extends pulumi.CustomResource {
  /// App Engine HTTP target.
  /// If the job providers a App Engine HTTP target the cron will
  /// send a request to the service instance
  /// Structure is documented below.
  late final pulumi.Output<JobAppEngineHttpTarget?> appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
  /// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
  /// The allowed duration for this deadline is:
  /// * For HTTP targets, between 15 seconds and 30 minutes.
  /// * For App Engine HTTP targets, between 15 seconds and 24 hours.
  /// * **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  late final pulumi.Output<String?> attemptDeadline;

  /// A human-readable description for the job.
  /// This string must not contain more than 500 characters.
  late final pulumi.Output<String?> description;

  /// HTTP target.
  /// If the job providers a http_target the cron will
  /// send a request to the targeted url
  /// Structure is documented below.
  late final pulumi.Output<JobHttpTarget?> httpTarget;

  /// The name of the job.
  late final pulumi.Output<String> name;

  /// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  late final pulumi.Output<bool> paused;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Pub/Sub target
  /// If the job providers a Pub/Sub target the cron will publish
  /// a message to the provided topic
  /// Structure is documented below.
  late final pulumi.Output<JobPubsubTarget?> pubsubTarget;

  /// Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  late final pulumi.Output<String> region;

  /// By default, if a job does not complete successfully,
  /// meaning that an acknowledgement is not received from the handler,
  /// then it will be retried with exponential backoff according to the settings
  /// Structure is documented below.
  late final pulumi.Output<JobRetryConfig?> retryConfig;

  /// Describes the schedule on which the job will be executed.
  late final pulumi.Output<String?> schedule;

  /// State of the job.
  late final pulumi.Output<String> state;

  /// Specifies the time zone to be used in interpreting schedule.
  /// The value of this field must be a time zone name from the tz database.
  late final pulumi.Output<String?> timeZone;

  JobCloudscheduler(
    String name, {
    JobCloudschedulerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudscheduler/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appEngineHttpTarget =
        registerOutput<JobAppEngineHttpTarget?>('appEngineHttpTarget');
    this.attemptDeadline = registerOutput<String?>('attemptDeadline');
    this.description = registerOutput<String?>('description');
    this.httpTarget = registerOutput<JobHttpTarget?>('httpTarget');
    this.name = registerOutput<String>('name');
    this.paused = registerOutput<bool>('paused');
    this.project = registerOutput<String>('project');
    this.pubsubTarget = registerOutput<JobPubsubTarget?>('pubsubTarget');
    this.region = registerOutput<String>('region');
    this.retryConfig = registerOutput<JobRetryConfig?>('retryConfig');
    this.schedule = registerOutput<String?>('schedule');
    this.state = registerOutput<String>('state');
    this.timeZone = registerOutput<String?>('timeZone');
  }
}
