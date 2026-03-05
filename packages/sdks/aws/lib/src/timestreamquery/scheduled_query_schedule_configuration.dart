// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryScheduleConfiguration {
  /// When to trigger the scheduled query run. This can be a cron expression or a rate expression.
  final pulumi.Input<String> scheduleExpression;

  /// Creates a new [ScheduledQueryScheduleConfiguration].
  /// [scheduleExpression] When to trigger the scheduled query run. This can be a cron expression or a rate expression.
  ScheduledQueryScheduleConfiguration({
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleExpression': scheduleExpression,
    };
  }

  factory ScheduledQueryScheduleConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryScheduleConfiguration(
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
    );
  }
}

