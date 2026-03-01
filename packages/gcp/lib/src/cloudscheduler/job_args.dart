// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_app_engine_http_target.dart';
import 'job_http_target.dart';
import 'job_pubsub_target.dart';
import 'job_retry_config.dart';

/// {@template pulumi_cloudscheduler_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_cloudscheduler_job_job_args_doc}
class JobArgs {
  /// App Engine HTTP target.
  /// If the job providers a App Engine HTTP target the cron will
  /// send a request to the service instance
  /// Structure is documented below.
  final pulumi.Input<JobAppEngineHttpTarget>? appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
  /// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
  /// The allowed duration for this deadline is:
  /// * For HTTP targets, between 15 seconds and 30 minutes.
  /// * For App Engine HTTP targets, between 15 seconds and 24 hours.
  /// * **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  final pulumi.Input<String>? attemptDeadline;

  /// A human-readable description for the job.
  /// This string must not contain more than 500 characters.
  final pulumi.Input<String>? description;

  /// HTTP target.
  /// If the job providers a http_target the cron will
  /// send a request to the targeted url
  /// Structure is documented below.
  final pulumi.Input<JobHttpTarget>? httpTarget;

  /// The name of the job.
  final pulumi.Input<String>? name;

  /// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  final pulumi.Input<bool>? paused;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Pub/Sub target
  /// If the job providers a Pub/Sub target the cron will publish
  /// a message to the provided topic
  /// Structure is documented below.
  final pulumi.Input<JobPubsubTarget>? pubsubTarget;

  /// Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  final pulumi.Input<String>? region;

  /// By default, if a job does not complete successfully,
  /// meaning that an acknowledgement is not received from the handler,
  /// then it will be retried with exponential backoff according to the settings
  /// Structure is documented below.
  final pulumi.Input<JobRetryConfig>? retryConfig;

  /// Describes the schedule on which the job will be executed.
  final pulumi.Input<String>? schedule;

  /// Specifies the time zone to be used in interpreting schedule.
  /// The value of this field must be a time zone name from the tz database.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [JobArgs].
  /// [appEngineHttpTarget] App Engine HTTP target.
  /// [attemptDeadline] The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// [description] A human-readable description for the job.
  /// [httpTarget] HTTP target.
  /// [name] The name of the job.
  /// [paused] Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTarget] Pub/Sub target
  /// [region] Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  /// [retryConfig] By default, if a job does not complete successfully,
  /// [schedule] Describes the schedule on which the job will be executed.
  /// [timeZone] Specifies the time zone to be used in interpreting schedule.
  JobArgs({
    JobAppEngineHttpTarget? appEngineHttpTarget,
    String? attemptDeadline,
    String? description,
    JobHttpTarget? httpTarget,
    String? name,
    bool? paused,
    String? project,
    JobPubsubTarget? pubsubTarget,
    String? region,
    JobRetryConfig? retryConfig,
    String? schedule,
    String? timeZone,
  }) : appEngineHttpTarget = pulumi
           .Input.asOptionalInput<JobAppEngineHttpTarget>(appEngineHttpTarget),
       attemptDeadline = pulumi.Input.asOptionalInput<String>(attemptDeadline),
       description = pulumi.Input.asOptionalInput<String>(description),
       httpTarget = pulumi.Input.asOptionalInput<JobHttpTarget>(httpTarget),
       name = pulumi.Input.asOptionalInput<String>(name),
       paused = pulumi.Input.asOptionalInput<bool>(paused),
       project = pulumi.Input.asOptionalInput<String>(project),
       pubsubTarget = pulumi.Input.asOptionalInput<JobPubsubTarget>(
         pubsubTarget,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       retryConfig = pulumi.Input.asOptionalInput<JobRetryConfig>(retryConfig),
       schedule = pulumi.Input.asOptionalInput<String>(schedule),
       timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpTarget':
          ?pulumi.Input.mapOptionalInputValue<
            JobAppEngineHttpTarget,
            Map<String, dynamic>
          >(appEngineHttpTarget, (value) => value.toMap()),
      'attemptDeadline': ?attemptDeadline,
      'description': ?description,
      'httpTarget':
          ?pulumi.Input.mapOptionalInputValue<
            JobHttpTarget,
            Map<String, dynamic>
          >(httpTarget, (value) => value.toMap()),
      'name': ?name,
      'paused': ?paused,
      'project': ?project,
      'pubsubTarget':
          ?pulumi.Input.mapOptionalInputValue<
            JobPubsubTarget,
            Map<String, dynamic>
          >(pubsubTarget, (value) => value.toMap()),
      'region': ?region,
      'retryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            JobRetryConfig,
            Map<String, dynamic>
          >(retryConfig, (value) => value.toMap()),
      'schedule': ?schedule,
      'timeZone': ?timeZone,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      appEngineHttpTarget: map['appEngineHttpTarget'] == null
          ? null
          : JobAppEngineHttpTarget.fromMap(
              (map['appEngineHttpTarget'] as Map).cast<String, dynamic>(),
            ),
      attemptDeadline: map['attemptDeadline'] == null
          ? null
          : map['attemptDeadline'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      httpTarget: map['httpTarget'] == null
          ? null
          : JobHttpTarget.fromMap(
              (map['httpTarget'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      paused: map['paused'] == null ? null : map['paused'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubTarget: map['pubsubTarget'] == null
          ? null
          : JobPubsubTarget.fromMap(
              (map['pubsubTarget'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      retryConfig: map['retryConfig'] == null
          ? null
          : JobRetryConfig.fromMap(
              (map['retryConfig'] as Map).cast<String, dynamic>(),
            ),
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}
