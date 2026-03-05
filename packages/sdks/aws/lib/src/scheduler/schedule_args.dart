// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_flexible_time_window.dart';
import 'schedule_target.dart';

/// {@template pulumi_scheduler_schedule_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_scheduler_schedule_schedule_args_doc}
class ScheduleArgs {
  /// Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  final pulumi.Input<String>? actionAfterCompletion;
  /// Brief description of the schedule.
  final pulumi.Input<String>? description;
  /// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  final pulumi.Input<String>? endDate;
  /// Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
  final pulumi.Input<ScheduleFlexibleTimeWindow> flexibleTimeWindow;
  /// Name of the schedule group to associate with this schedule. When omitted, the `default` schedule group is used.
  final pulumi.Input<String>? groupName;
  /// ARN for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.
  final pulumi.Input<String>? kmsKeyArn;
  /// Name of the schedule. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Defines when the schedule runs. Read more in [Schedule types on EventBridge Scheduler](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html).
  final pulumi.Input<String> scheduleExpression;
  /// Timezone in which the scheduling expression is evaluated. Defaults to `UTC`. Example: `Australia/Sydney`.
  final pulumi.Input<String>? scheduleExpressionTimezone;
  /// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  final pulumi.Input<String>? startDate;
  /// Specifies whether the schedule is enabled or disabled. One of: `ENABLED` (default), `DISABLED`.
  final pulumi.Input<String>? state;
  /// Configures the target of the schedule. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScheduleTarget> target;

  /// Creates a new [ScheduleArgs].
  /// [actionAfterCompletion] Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  /// [description] Brief description of the schedule.
  /// [endDate] The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  /// [flexibleTimeWindow] Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
  /// [groupName] Name of the schedule group to associate with this schedule. When omitted, the `default` schedule group is used.
  /// [kmsKeyArn] ARN for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.
  /// [name] Name of the schedule. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleExpression] Defines when the schedule runs. Read more in [Schedule types on EventBridge Scheduler](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html).
  /// [scheduleExpressionTimezone] Timezone in which the scheduling expression is evaluated. Defaults to `UTC`. Example: `Australia/Sydney`.
  /// [startDate] The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  /// [state] Specifies whether the schedule is enabled or disabled. One of: `ENABLED` (default), `DISABLED`.
  /// [target] Configures the target of the schedule. Detailed below.
  ScheduleArgs({
    this.actionAfterCompletion,
    this.description,
    this.endDate,
    required this.flexibleTimeWindow,
    this.groupName,
    this.kmsKeyArn,
    this.name,
    this.namePrefix,
    this.region,
    required this.scheduleExpression,
    this.scheduleExpressionTimezone,
    this.startDate,
    this.state,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionAfterCompletion': ?actionAfterCompletion,
      'description': ?description,
      'endDate': ?endDate,
      'flexibleTimeWindow': pulumi.Input.mapInputValue<ScheduleFlexibleTimeWindow, Map<String, dynamic>>(flexibleTimeWindow, (value) => value.toMap()),
      'groupName': ?groupName,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'scheduleExpression': scheduleExpression,
      'scheduleExpressionTimezone': ?scheduleExpressionTimezone,
      'startDate': ?startDate,
      'state': ?state,
      'target': pulumi.Input.mapInputValue<ScheduleTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      actionAfterCompletion: (() { final guardedValue = map['actionAfterCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexibleTimeWindow: pulumi.Input.fromValue(ScheduleFlexibleTimeWindow.fromMap((map['flexibleTimeWindow']! as Map).cast<String, dynamic>())),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
      scheduleExpressionTimezone: (() { final guardedValue = map['scheduleExpressionTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(ScheduleTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

