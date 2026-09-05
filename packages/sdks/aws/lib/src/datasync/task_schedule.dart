// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSchedule {
  /// Specifies the schedule you want your task to use for repeated executions. For more information, see [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  final pulumi.Input<String> scheduleExpression;
  /// Whether to enable or disable your task schedule. Valid values: `ENABLED`, `DISABLED`. Default: `ENABLED`.
  final pulumi.Input<String?>? status;

  /// Creates a new [TaskSchedule].
  /// [scheduleExpression] Specifies the schedule you want your task to use for repeated executions. For more information, see [Schedule Expressions for Rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).
  /// [status] Whether to enable or disable your task schedule. Valid values: `ENABLED`, `DISABLED`. Default: `ENABLED`.
  const TaskSchedule({
    required this.scheduleExpression,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleExpression': scheduleExpression,
      'status': ?status,
    };
  }

  factory TaskSchedule.fromMap(Map<String, dynamic> map) {
    return TaskSchedule(
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
