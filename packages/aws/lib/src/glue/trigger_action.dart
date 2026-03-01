// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_action_notification_property.dart';

class TriggerAction {
  /// Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
  final Map<String, String>? arguments;

  /// The name of the crawler to be executed. Conflicts with `job_name`.
  final String? crawlerName;

  /// The name of a job to be executed. Conflicts with `crawler_name`.
  final String? jobName;

  /// Specifies configuration properties of a job run notification. See Notification Property details below.
  final TriggerActionNotificationProperty? notificationProperty;

  /// The name of the Security Configuration structure to be used with this action.
  final String? securityConfiguration;

  /// The job run timeout in minutes. It overrides the timeout value of the job.
  final int? timeout;

  /// Creates a new [TriggerAction].
  /// [arguments] Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
  /// [crawlerName] The name of the crawler to be executed. Conflicts with `job_name`.
  /// [jobName] The name of a job to be executed. Conflicts with `crawler_name`.
  /// [notificationProperty] Specifies configuration properties of a job run notification. See Notification Property details below.
  /// [securityConfiguration] The name of the Security Configuration structure to be used with this action.
  /// [timeout] The job run timeout in minutes. It overrides the timeout value of the job.
  TriggerAction({
    this.arguments,
    this.crawlerName,
    this.jobName,
    this.notificationProperty,
    this.securityConfiguration,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'crawlerName': ?crawlerName,
      'jobName': ?jobName,
      'notificationProperty': ?notificationProperty == null
          ? null
          : notificationProperty!.toMap(),
      'securityConfiguration': ?securityConfiguration,
      'timeout': ?timeout,
    };
  }

  factory TriggerAction.fromMap(Map<String, dynamic> map) {
    return TriggerAction(
      arguments: map['arguments'] == null
          ? null
          : (map['arguments'] as Map).cast<String, String>(),
      crawlerName: map['crawlerName'] == null
          ? null
          : map['crawlerName'] as String,
      jobName: map['jobName'] == null ? null : map['jobName'] as String,
      notificationProperty: map['notificationProperty'] == null
          ? null
          : TriggerActionNotificationProperty.fromMap(
              (map['notificationProperty'] as Map).cast<String, dynamic>(),
            ),
      securityConfiguration: map['securityConfiguration'] == null
          ? null
          : map['securityConfiguration'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}
