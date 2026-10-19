// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_action_notification_property.dart';

class TriggerAction {
  /// Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
  final pulumi.Input<Map<String, String>?>? arguments;
  /// Name of the crawler to be executed. Conflicts with `jobName`.
  final pulumi.Input<String?>? crawlerName;
  /// Name of a job to be executed. Conflicts with `crawlerName`.
  final pulumi.Input<String?>? jobName;
  /// Configuration properties of a job run notification. See `notificationProperty` details below.
  final pulumi.Input<TriggerActionNotificationProperty?>? notificationProperty;
  /// Name of the Security Configuration structure to be used with this action.
  final pulumi.Input<String?>? securityConfiguration;
  /// Job run timeout in minutes. It overrides the timeout value of the job.
  final pulumi.Input<int?>? timeout;

  /// Creates a new [TriggerAction].
  /// [arguments] Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.
  /// [crawlerName] Name of the crawler to be executed. Conflicts with `jobName`.
  /// [jobName] Name of a job to be executed. Conflicts with `crawlerName`.
  /// [notificationProperty] Configuration properties of a job run notification. See `notificationProperty` details below.
  /// [securityConfiguration] Name of the Security Configuration structure to be used with this action.
  /// [timeout] Job run timeout in minutes. It overrides the timeout value of the job.
  const TriggerAction({
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
      'notificationProperty': ?pulumi.Input.mapOptionalInputValue<TriggerActionNotificationProperty, Map<String, dynamic>>(notificationProperty, (value) => value.toMap()),
      'securityConfiguration': ?securityConfiguration,
      'timeout': ?timeout,
    };
  }

  factory TriggerAction.fromMap(Map<String, dynamic> map) {
    return TriggerAction(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      crawlerName: (() { final guardedValue = map['crawlerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationProperty: (() { final guardedValue = map['notificationProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerActionNotificationProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityConfiguration: (() { final guardedValue = map['securityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
