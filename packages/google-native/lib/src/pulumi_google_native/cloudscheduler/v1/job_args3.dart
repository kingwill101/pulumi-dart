// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'app_engine_http_target.dart';
import 'http_target.dart';
import 'pubsub_target.dart';
import 'retry_config.dart';

/// The set of arguments for Job.
class JobArgs3 {
  /// App Engine HTTP target.
  final Input<AppEngineHttpTarget>? appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The default and the allowed values depend on the type of target: * For HTTP targets, the default is 3 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine HTTP targets, 0 indicates that the request has the default deadline. The default deadline depends on the scaling type of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. * For Pub/Sub targets, this field is ignored.
  final Input<String>? attemptDeadline;

  /// Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
  final Input<String>? description;

  /// HTTP target.
  final Input<HttpTarget>? httpTarget;
  final Input<String>? location;

  /// Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the job's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final Input<String>? name;
  final Input<String>? project;

  /// Pub/Sub target.
  final Input<PubsubTarget>? pubsubTarget;

  /// Settings that determine the retry behavior.
  final Input<RetryConfig>? retryConfig;

  /// Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules) As a general rule, execution `n + 1` of a job will not begin until execution `n` has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution takes until 16:15, the `n+1`th execution will not start until `16:15`. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry_count > 0 and a job attempt fails, the job will be tried a total of retry_count times, with exponential backoff, until the next scheduled start time. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure.
  final Input<String>? schedule;

  /// Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final Input<String>? timeZone;

  JobArgs3({
    this.appEngineHttpTarget,
    this.attemptDeadline,
    this.description,
    this.httpTarget,
    this.location,
    this.name,
    this.project,
    this.pubsubTarget,
    this.retryConfig,
    this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpTargetValue = appEngineHttpTarget;
    if (appEngineHttpTargetValue != null) {
      map['appEngineHttpTarget'] = Input.mapOptionalInputValue<
              AppEngineHttpTarget, Map<String, dynamic>>(
          appEngineHttpTargetValue, (value) => value.toMap());
    }
    final attemptDeadlineValue = attemptDeadline;
    if (attemptDeadlineValue != null) {
      map['attemptDeadline'] = attemptDeadlineValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final httpTargetValue = httpTarget;
    if (httpTargetValue != null) {
      map['httpTarget'] =
          Input.mapOptionalInputValue<HttpTarget, Map<String, dynamic>>(
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
    final pubsubTargetValue = pubsubTarget;
    if (pubsubTargetValue != null) {
      map['pubsubTarget'] =
          Input.mapOptionalInputValue<PubsubTarget, Map<String, dynamic>>(
              pubsubTargetValue, (value) => value.toMap());
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          Input.mapOptionalInputValue<RetryConfig, Map<String, dynamic>>(
              retryConfigValue, (value) => value.toMap());
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory JobArgs3.fromMap(Map<String, dynamic> map) {
    return JobArgs3(
      appEngineHttpTarget: Input.asOptionalInput<AppEngineHttpTarget>(
          map['appEngineHttpTarget']),
      attemptDeadline: Input.asOptionalInput<String>(map['attemptDeadline']),
      description: Input.asOptionalInput<String>(map['description']),
      httpTarget: Input.asOptionalInput<HttpTarget>(map['httpTarget']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubTarget: Input.asOptionalInput<PubsubTarget>(map['pubsubTarget']),
      retryConfig: Input.asOptionalInput<RetryConfig>(map['retryConfig']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
