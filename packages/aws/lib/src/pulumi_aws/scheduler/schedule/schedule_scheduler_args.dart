// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../schedule_flexible_time_window/schedule_flexible_time_window.dart';
import '../schedule_target/schedule_target.dart';

/// The set of arguments for Schedule.
class ScheduleSchedulerArgs {
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

  ScheduleSchedulerArgs({
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
    final map = <String, dynamic>{};
    final actionAfterCompletionValue = actionAfterCompletion;
    if (actionAfterCompletionValue != null) {
      map['actionAfterCompletion'] = actionAfterCompletionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final endDateValue = endDate;
    if (endDateValue != null) {
      map['endDate'] = endDateValue;
    }
    map['flexibleTimeWindow'] = pulumi.Input.mapInputValue<
        ScheduleFlexibleTimeWindow,
        Map<String, dynamic>>(flexibleTimeWindow, (value) => value.toMap());
    final groupNameValue = groupName;
    if (groupNameValue != null) {
      map['groupName'] = groupNameValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scheduleExpression'] = scheduleExpression;
    final scheduleExpressionTimezoneValue = scheduleExpressionTimezone;
    if (scheduleExpressionTimezoneValue != null) {
      map['scheduleExpressionTimezone'] = scheduleExpressionTimezoneValue;
    }
    final startDateValue = startDate;
    if (startDateValue != null) {
      map['startDate'] = startDateValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    map['target'] =
        pulumi.Input.mapInputValue<ScheduleTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    return map;
  }

  factory ScheduleSchedulerArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleSchedulerArgs(
      actionAfterCompletion:
          pulumi.Input.asOptionalInput<String>(map['actionAfterCompletion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      endDate: pulumi.Input.asOptionalInput<String>(map['endDate']),
      flexibleTimeWindow: pulumi.Input.asInput<ScheduleFlexibleTimeWindow>(
          map['flexibleTimeWindow']),
      groupName: pulumi.Input.asOptionalInput<String>(map['groupName']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduleExpression:
          pulumi.Input.asInput<String>(map['scheduleExpression']),
      scheduleExpressionTimezone: pulumi.Input.asOptionalInput<String>(
          map['scheduleExpressionTimezone']),
      startDate: pulumi.Input.asOptionalInput<String>(map['startDate']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      target: pulumi.Input.asInput<ScheduleTarget>(map['target']),
    );
  }
}
