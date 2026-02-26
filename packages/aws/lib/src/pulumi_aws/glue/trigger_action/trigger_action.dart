// ignore_for_file: unused_element, unnecessary_cast

import '../trigger_action_notification_property/trigger_action_notification_property.dart';

class TriggerAction {
  /// Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
  final Map<String, String>? arguments;

  /// The name of the crawler to be executed. Conflicts with <span pulumi-lang-nodejs="`jobName`" pulumi-lang-dotnet="`JobName`" pulumi-lang-go="`jobName`" pulumi-lang-python="`job_name`" pulumi-lang-yaml="`jobName`" pulumi-lang-java="`jobName`">`job_name`</span>.
  final String? crawlerName;

  /// The name of a job to be executed. Conflicts with <span pulumi-lang-nodejs="`crawlerName`" pulumi-lang-dotnet="`CrawlerName`" pulumi-lang-go="`crawlerName`" pulumi-lang-python="`crawler_name`" pulumi-lang-yaml="`crawlerName`" pulumi-lang-java="`crawlerName`">`crawler_name`</span>.
  final String? jobName;

  /// Specifies configuration properties of a job run notification. See Notification Property details below.
  final TriggerActionNotificationProperty? notificationProperty;

  /// The name of the Security Configuration structure to be used with this action.
  final String? securityConfiguration;

  /// The job run timeout in minutes. It overrides the timeout value of the job.
  final int? timeout;

  TriggerAction({
    this.arguments,
    this.crawlerName,
    this.jobName,
    this.notificationProperty,
    this.securityConfiguration,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = argumentsValue;
    }
    final crawlerNameValue = crawlerName;
    if (crawlerNameValue != null) {
      map['crawlerName'] = crawlerNameValue;
    }
    final jobNameValue = jobName;
    if (jobNameValue != null) {
      map['jobName'] = jobNameValue;
    }
    final notificationPropertyValue = notificationProperty;
    if (notificationPropertyValue != null) {
      map['notificationProperty'] = notificationPropertyValue.toMap();
    }
    final securityConfigurationValue = securityConfiguration;
    if (securityConfigurationValue != null) {
      map['securityConfiguration'] = securityConfigurationValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory TriggerAction.fromMap(Map<String, dynamic> map) {
    return TriggerAction(
      arguments: map['arguments'] == null
          ? null
          : (map['arguments'] as Map).cast<String, String>(),
      crawlerName:
          map['crawlerName'] == null ? null : map['crawlerName'] as String,
      jobName: map['jobName'] == null ? null : map['jobName'] as String,
      notificationProperty: map['notificationProperty'] == null
          ? null
          : TriggerActionNotificationProperty.fromMap(
              (map['notificationProperty'] as Map).cast<String, dynamic>()),
      securityConfiguration: map['securityConfiguration'] == null
          ? null
          : map['securityConfiguration'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}
