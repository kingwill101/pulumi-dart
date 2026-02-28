// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_target_cloudscheduler_v1beta1.dart';
import 'http_target_cloudscheduler_v1beta1.dart';
import 'pubsub_target_cloudscheduler_v1beta1.dart';
import 'retry_config_cloudscheduler_v1beta1.dart';

/// {@template pulumi_cloudscheduler_v1beta1_job_cloudscheduler_v1beta1_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_cloudscheduler_v1beta1_job_cloudscheduler_v1beta1_args_doc}
class JobCloudschedulerV1beta1Args {
  /// App Engine HTTP target.
  final pulumi.Input<AppEngineHttpTargetCloudschedulerV1beta1>? appEngineHttpTarget;
  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The default and the allowed values depend on the type of target: * For HTTP targets, the default is 3 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine HTTP targets, 0 indicates that the request has the default deadline. The default deadline depends on the scaling type of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. * For Pub/Sub targets, this field is ignored.
  final pulumi.Input<String>? attemptDeadline;
  /// Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
  final pulumi.Input<String>? description;
  /// HTTP target.
  final pulumi.Input<HttpTargetCloudschedulerV1beta1>? httpTarget;
  /// Immutable. This field is used to manage the legacy App Engine Cron jobs using the Cloud Scheduler API. If the field is set to true, the job will be considered a legacy job. Note that App Engine Cron jobs have fewer features than Cloud Scheduler jobs, e.g., are only limited to App Engine targets.
  final pulumi.Input<bool>? legacyAppEngineCron;
  final pulumi.Input<String>? location;
  /// Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the job's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Pub/Sub target.
  final pulumi.Input<PubsubTargetCloudschedulerV1beta1>? pubsubTarget;
  /// Settings that determine the retry behavior.
  final pulumi.Input<RetryConfigCloudschedulerV1beta1>? retryConfig;
  /// Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules) As a general rule, execution `n + 1` of a job will not begin until execution `n` has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution takes until 16:15, the `n+1`th execution will not start until `16:15`. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry_count > 0 and a job attempt fails, the job will be tried a total of retry_count times, with exponential backoff, until the next scheduled start time. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure.
  final pulumi.Input<String>? schedule;
  /// Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final pulumi.Input<String>? timeZone;

  /// Creates a new [JobCloudschedulerV1beta1Args].
  /// [appEngineHttpTarget] App Engine HTTP target.
  /// [attemptDeadline] The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The default and the allowed values depend on the type of target: * For HTTP targets, the default is 3 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine HTTP targets, 0 indicates that the request has the default deadline. The default deadline depends on the scaling type of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. * For Pub/Sub targets, this field is ignored.
  /// [description] Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
  /// [httpTarget] HTTP target.
  /// [legacyAppEngineCron] Immutable. This field is used to manage the legacy App Engine Cron jobs using the Cloud Scheduler API. If the field is set to true, the job will be considered a legacy job. Note that App Engine Cron jobs have fewer features than Cloud Scheduler jobs, e.g., are only limited to App Engine targets.
  /// [location] Optional.
  /// [name] Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the job's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// [project] Optional.
  /// [pubsubTarget] Pub/Sub target.
  /// [retryConfig] Settings that determine the retry behavior.
  /// [schedule] Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules) As a general rule, execution `n + 1` of a job will not begin until execution `n` has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution takes until 16:15, the `n+1`th execution will not start until `16:15`. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry_count > 0 and a job attempt fails, the job will be tried a total of retry_count times, with exponential backoff, until the next scheduled start time. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure.
  /// [timeZone] Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  JobCloudschedulerV1beta1Args({
    AppEngineHttpTargetCloudschedulerV1beta1? appEngineHttpTarget,
    String? attemptDeadline,
    String? description,
    HttpTargetCloudschedulerV1beta1? httpTarget,
    bool? legacyAppEngineCron,
    String? location,
    String? name,
    String? project,
    PubsubTargetCloudschedulerV1beta1? pubsubTarget,
    RetryConfigCloudschedulerV1beta1? retryConfig,
    String? schedule,
    String? timeZone,
  }) :
      appEngineHttpTarget = pulumi.Input.asOptionalInput<AppEngineHttpTargetCloudschedulerV1beta1>(appEngineHttpTarget),
      attemptDeadline = pulumi.Input.asOptionalInput<String>(attemptDeadline),
      description = pulumi.Input.asOptionalInput<String>(description),
      httpTarget = pulumi.Input.asOptionalInput<HttpTargetCloudschedulerV1beta1>(httpTarget),
      legacyAppEngineCron = pulumi.Input.asOptionalInput<bool>(legacyAppEngineCron),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pubsubTarget = pulumi.Input.asOptionalInput<PubsubTargetCloudschedulerV1beta1>(pubsubTarget),
      retryConfig = pulumi.Input.asOptionalInput<RetryConfigCloudschedulerV1beta1>(retryConfig),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpTarget': ?pulumi.Input.mapOptionalInputValue<AppEngineHttpTargetCloudschedulerV1beta1, Map<String, dynamic>>(appEngineHttpTarget, (value) => value.toMap()),
      'attemptDeadline': ?attemptDeadline,
      'description': ?description,
      'httpTarget': ?pulumi.Input.mapOptionalInputValue<HttpTargetCloudschedulerV1beta1, Map<String, dynamic>>(httpTarget, (value) => value.toMap()),
      'legacyAppEngineCron': ?legacyAppEngineCron,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pubsubTarget': ?pulumi.Input.mapOptionalInputValue<PubsubTargetCloudschedulerV1beta1, Map<String, dynamic>>(pubsubTarget, (value) => value.toMap()),
      'retryConfig': ?pulumi.Input.mapOptionalInputValue<RetryConfigCloudschedulerV1beta1, Map<String, dynamic>>(retryConfig, (value) => value.toMap()),
      'schedule': ?schedule,
      'timeZone': ?timeZone,
    };
  }

  factory JobCloudschedulerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return JobCloudschedulerV1beta1Args(
      appEngineHttpTarget: map['appEngineHttpTarget'] == null ? null : AppEngineHttpTargetCloudschedulerV1beta1.fromMap((map['appEngineHttpTarget'] as Map).cast<String, dynamic>()),
      attemptDeadline: map['attemptDeadline'] == null ? null : map['attemptDeadline'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      httpTarget: map['httpTarget'] == null ? null : HttpTargetCloudschedulerV1beta1.fromMap((map['httpTarget'] as Map).cast<String, dynamic>()),
      legacyAppEngineCron: map['legacyAppEngineCron'] == null ? null : map['legacyAppEngineCron'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pubsubTarget: map['pubsubTarget'] == null ? null : PubsubTargetCloudschedulerV1beta1.fromMap((map['pubsubTarget'] as Map).cast<String, dynamic>()),
      retryConfig: map['retryConfig'] == null ? null : RetryConfigCloudschedulerV1beta1.fromMap((map['retryConfig'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

