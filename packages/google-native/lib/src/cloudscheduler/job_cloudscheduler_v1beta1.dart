import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_target_response_cloudscheduler_v1beta1.dart';
import 'http_target_response_cloudscheduler_v1beta1.dart';
import 'job_cloudscheduler_v1beta1_args.dart';
import 'pubsub_target_response_cloudscheduler_v1beta1.dart';
import 'retry_config_response_cloudscheduler_v1beta1.dart';
import 'status_response_cloudscheduler_v1beta1.dart';

/// Creates a job.
class JobCloudschedulerV1beta1 extends pulumi.CustomResource {
  /// App Engine HTTP target.
  late final pulumi.Output<AppEngineHttpTargetResponseCloudschedulerV1beta1>
      appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The default and the allowed values depend on the type of target: * For HTTP targets, the default is 3 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine HTTP targets, 0 indicates that the request has the default deadline. The default deadline depends on the scaling type of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. * For Pub/Sub targets, this field is ignored.
  late final pulumi.Output<String> attemptDeadline;

  /// Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
  late final pulumi.Output<String> description;

  /// HTTP target.
  late final pulumi.Output<HttpTargetResponseCloudschedulerV1beta1> httpTarget;

  /// The time the last job attempt started.
  late final pulumi.Output<String> lastAttemptTime;

  /// Immutable. This field is used to manage the legacy App Engine Cron jobs using the Cloud Scheduler API. If the field is set to true, the job will be considered a legacy job. Note that App Engine Cron jobs have fewer features than Cloud Scheduler jobs, e.g., are only limited to App Engine targets.
  late final pulumi.Output<bool> legacyAppEngineCron;
  late final pulumi.Output<String> location;

  /// Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the job's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Pub/Sub target.
  late final pulumi.Output<PubsubTargetResponseCloudschedulerV1beta1>
      pubsubTarget;

  /// Settings that determine the retry behavior.
  late final pulumi.Output<RetryConfigResponseCloudschedulerV1beta1>
      retryConfig;

  /// Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules) As a general rule, execution `n + 1` of a job will not begin until execution `n` has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution takes until 16:15, the `n+1`th execution will not start until `16:15`. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry_count > 0 and a job attempt fails, the job will be tried a total of retry_count times, with exponential backoff, until the next scheduled start time. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure.
  late final pulumi.Output<String> schedule;

  /// The next time the job is scheduled. Note that this may be a retry of a previously failed attempt or the next execution time according to the schedule.
  late final pulumi.Output<String> scheduleTime;

  /// State of the job.
  late final pulumi.Output<String> state;

  /// The response from the target for the last attempted execution.
  late final pulumi.Output<StatusResponseCloudschedulerV1beta1> status;

  /// Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  late final pulumi.Output<String> timeZone;

  /// The creation time of the job.
  late final pulumi.Output<String> userUpdateTime;

  /// Creates a new [JobCloudschedulerV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobCloudschedulerV1beta1]. {@macro pulumi_cloudscheduler_v1beta1_job_cloudscheduler_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobCloudschedulerV1beta1(
    String name, {
    JobCloudschedulerV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudscheduler/v1beta1:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appEngineHttpTarget =
        registerOutput<AppEngineHttpTargetResponseCloudschedulerV1beta1>(
            'appEngineHttpTarget');
    this.attemptDeadline = registerOutput<String>('attemptDeadline');
    this.description = registerOutput<String>('description');
    this.httpTarget =
        registerOutput<HttpTargetResponseCloudschedulerV1beta1>('httpTarget');
    this.lastAttemptTime = registerOutput<String>('lastAttemptTime');
    this.legacyAppEngineCron = registerOutput<bool>('legacyAppEngineCron');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubTarget =
        registerOutput<PubsubTargetResponseCloudschedulerV1beta1>(
            'pubsubTarget');
    this.retryConfig =
        registerOutput<RetryConfigResponseCloudschedulerV1beta1>('retryConfig');
    this.schedule = registerOutput<String>('schedule');
    this.scheduleTime = registerOutput<String>('scheduleTime');
    this.state = registerOutput<String>('state');
    this.status = registerOutput<StatusResponseCloudschedulerV1beta1>('status');
    this.timeZone = registerOutput<String>('timeZone');
    this.userUpdateTime = registerOutput<String>('userUpdateTime');
  }
}
