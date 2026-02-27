// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_app_engine_http_target/job_app_engine_http_target.dart';
import '../job_http_target/job_http_target.dart';
import '../job_pubsub_target/job_pubsub_target.dart';
import '../job_retry_config/job_retry_config.dart';

/// The set of arguments for Job.
class JobArgs3 {
  /// App Engine HTTP target.
  /// If the job providers a App Engine HTTP target the cron will
  /// send a request to the service instance
  /// Structure is documented below.
  final Input<JobAppEngineHttpTarget>? appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
  /// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
  /// The allowed duration for this deadline is:
  /// * For HTTP targets, between 15 seconds and 30 minutes.
  /// * For App Engine HTTP targets, between 15 seconds and 24 hours.
  /// * **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  final Input<String>? attemptDeadline;

  /// A human-readable description for the job.
  /// This string must not contain more than 500 characters.
  final Input<String>? description;

  /// HTTP target.
  /// If the job providers a http_target the cron will
  /// send a request to the targeted url
  /// Structure is documented below.
  final Input<JobHttpTarget>? httpTarget;

  /// The name of the job.
  final Input<String>? name;

  /// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  final Input<bool>? paused;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Pub/Sub target
  /// If the job providers a Pub/Sub target the cron will publish
  /// a message to the provided topic
  /// Structure is documented below.
  final Input<JobPubsubTarget>? pubsubTarget;

  /// Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  final Input<String>? region;

  /// By default, if a job does not complete successfully,
  /// meaning that an acknowledgement is not received from the handler,
  /// then it will be retried with exponential backoff according to the settings
  /// Structure is documented below.
  final Input<JobRetryConfig>? retryConfig;

  /// Describes the schedule on which the job will be executed.
  final Input<String>? schedule;

  /// Specifies the time zone to be used in interpreting schedule.
  /// The value of this field must be a time zone name from the tz database.
  final Input<String>? timeZone;

  JobArgs3({
    this.appEngineHttpTarget,
    this.attemptDeadline,
    this.description,
    this.httpTarget,
    this.name,
    this.paused,
    this.project,
    this.pubsubTarget,
    this.region,
    this.retryConfig,
    this.schedule,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appEngineHttpTargetValue = appEngineHttpTarget;
    if (appEngineHttpTargetValue != null) {
      map['appEngineHttpTarget'] = Input.mapOptionalInputValue<
              JobAppEngineHttpTarget, Map<String, dynamic>>(
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
          Input.mapOptionalInputValue<JobHttpTarget, Map<String, dynamic>>(
              httpTargetValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pausedValue = paused;
    if (pausedValue != null) {
      map['paused'] = pausedValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pubsubTargetValue = pubsubTarget;
    if (pubsubTargetValue != null) {
      map['pubsubTarget'] =
          Input.mapOptionalInputValue<JobPubsubTarget, Map<String, dynamic>>(
              pubsubTargetValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retryConfigValue = retryConfig;
    if (retryConfigValue != null) {
      map['retryConfig'] =
          Input.mapOptionalInputValue<JobRetryConfig, Map<String, dynamic>>(
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
      appEngineHttpTarget: Input.asOptionalInput<JobAppEngineHttpTarget>(
          map['appEngineHttpTarget']),
      attemptDeadline: Input.asOptionalInput<String>(map['attemptDeadline']),
      description: Input.asOptionalInput<String>(map['description']),
      httpTarget: Input.asOptionalInput<JobHttpTarget>(map['httpTarget']),
      name: Input.asOptionalInput<String>(map['name']),
      paused: Input.asOptionalInput<bool>(map['paused']),
      project: Input.asOptionalInput<String>(map['project']),
      pubsubTarget: Input.asOptionalInput<JobPubsubTarget>(map['pubsubTarget']),
      region: Input.asOptionalInput<String>(map['region']),
      retryConfig: Input.asOptionalInput<JobRetryConfig>(map['retryConfig']),
      schedule: Input.asOptionalInput<String>(map['schedule']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
