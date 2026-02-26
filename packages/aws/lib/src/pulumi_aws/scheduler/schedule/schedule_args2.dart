// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../schedule_flexible_time_window/schedule_flexible_time_window.dart';
import '../schedule_target/schedule_target.dart';

/// The set of arguments for Schedule.
class ScheduleArgs2 {
  /// Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  final Input<String>? actionAfterCompletion;

  /// Brief description of the schedule.
  final Input<String>? description;

  /// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  final Input<String>? endDate;

  /// Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
  final Input<ScheduleFlexibleTimeWindow> flexibleTimeWindow;

  /// Name of the schedule group to associate with this schedule. When omitted, the <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span> schedule group is used.
  final Input<String>? groupName;

  /// ARN for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.
  final Input<String>? kmsKeyArn;

  /// Name of the schedule. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Defines when the schedule runs. Read more in [Schedule types on EventBridge Scheduler](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html).
  final Input<String> scheduleExpression;

  /// Timezone in which the scheduling expression is evaluated. Defaults to `UTC`. Example: `Australia/Sydney`.
  final Input<String>? scheduleExpressionTimezone;

  /// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  final Input<String>? startDate;

  /// Specifies whether the schedule is enabled or disabled. One of: `ENABLED` (default), `DISABLED`.
  final Input<String>? state;

  /// Configures the target of the schedule. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<ScheduleTarget> target;

  ScheduleArgs2({
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
    map['flexibleTimeWindow'] =
        Input.mapInputValue<ScheduleFlexibleTimeWindow, Map<String, dynamic>>(
            flexibleTimeWindow, (value) => value.toMap());
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
    map['target'] = Input.mapInputValue<ScheduleTarget, Map<String, dynamic>>(
        target, (value) => value.toMap());
    return map;
  }

  factory ScheduleArgs2.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs2(
      actionAfterCompletion:
          Input.asOptionalInput<String>(map['actionAfterCompletion']),
      description: Input.asOptionalInput<String>(map['description']),
      endDate: Input.asOptionalInput<String>(map['endDate']),
      flexibleTimeWindow:
          Input.asInput<ScheduleFlexibleTimeWindow>(map['flexibleTimeWindow']),
      groupName: Input.asOptionalInput<String>(map['groupName']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
      scheduleExpression: Input.asInput<String>(map['scheduleExpression']),
      scheduleExpressionTimezone:
          Input.asOptionalInput<String>(map['scheduleExpressionTimezone']),
      startDate: Input.asOptionalInput<String>(map['startDate']),
      state: Input.asOptionalInput<String>(map['state']),
      target: Input.asInput<ScheduleTarget>(map['target']),
    );
  }
}
