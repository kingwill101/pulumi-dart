// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a timer trigger.
class TimerTriggerResponse {
  /// The name of the trigger.
  final pulumi.Input<String> name;
  /// The CRON expression for the task schedule
  final pulumi.Input<String> schedule;
  /// The current status of trigger.
  final pulumi.Input<String?>? status;

  /// Creates a new [TimerTriggerResponse].
  /// [name] The name of the trigger.
  /// [schedule] The CRON expression for the task schedule
  /// [status] The current status of trigger.
  TimerTriggerResponse({
    required this.name,
    required this.schedule,
    pulumi.Input<String?>? status,
  }) : status = status ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'schedule': schedule,
      'status': ?status,
    };
  }

  factory TimerTriggerResponse.fromMap(Map<String, dynamic> map) {
    return TimerTriggerResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
