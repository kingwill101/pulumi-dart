// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_flexible_time_window.dart';
import 'schedule_target.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  final pulumi.Input<String>? actionAfterCompletion;
  /// ARN of the schedule.
  final pulumi.Input<String>? arn;
  /// Brief description of the schedule.
  final pulumi.Input<String>? description;
  /// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  final pulumi.Input<String>? endDate;
  /// Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
  final pulumi.Input<ScheduleFlexibleTimeWindow>? flexibleTimeWindow;
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
  final pulumi.Input<String>? scheduleExpression;
  /// Timezone in which the scheduling expression is evaluated. Defaults to `UTC`. Example: `Australia/Sydney`.
  final pulumi.Input<String>? scheduleExpressionTimezone;
  /// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  final pulumi.Input<String>? startDate;
  /// Specifies whether the schedule is enabled or disabled. One of: `ENABLED` (default), `DISABLED`.
  final pulumi.Input<String>? state;
  /// Configures the target of the schedule. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ScheduleTarget>? target;

  /// Creates a new [ScheduleState].
  /// [actionAfterCompletion] Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  /// [arn] ARN of the schedule.
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
  ScheduleState({
    pulumi.Output<String>? actionAfterCompletion,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endDate,
    pulumi.Output<ScheduleFlexibleTimeWindow>? flexibleTimeWindow,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scheduleExpression,
    pulumi.Output<String>? scheduleExpressionTimezone,
    pulumi.Output<String>? startDate,
    pulumi.Output<String>? state,
    pulumi.Output<ScheduleTarget>? target,
  }) :
      actionAfterCompletion = pulumi.Input.asOptionalInput<String>(actionAfterCompletion),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      flexibleTimeWindow = pulumi.Input.asOptionalInput<ScheduleFlexibleTimeWindow>(flexibleTimeWindow),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduleExpression = pulumi.Input.asOptionalInput<String>(scheduleExpression),
      scheduleExpressionTimezone = pulumi.Input.asOptionalInput<String>(scheduleExpressionTimezone),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      state = pulumi.Input.asOptionalInput<String>(state),
      target = pulumi.Input.asOptionalInput<ScheduleTarget>(target);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionAfterCompletion': ?actionAfterCompletion,
      'arn': ?arn,
      'description': ?description,
      'endDate': ?endDate,
      'flexibleTimeWindow': ?pulumi.Input.mapOptionalInputValue<ScheduleFlexibleTimeWindow, Map<String, dynamic>>(flexibleTimeWindow, (value) => value.toMap()),
      'groupName': ?groupName,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'scheduleExpression': ?scheduleExpression,
      'scheduleExpressionTimezone': ?scheduleExpressionTimezone,
      'startDate': ?startDate,
      'state': ?state,
      'target': ?pulumi.Input.mapOptionalInputValue<ScheduleTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      actionAfterCompletion: map['actionAfterCompletion'] == null ? null : pulumi.Output.create<String>(map['actionAfterCompletion'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      flexibleTimeWindow: map['flexibleTimeWindow'] == null ? null : pulumi.Output.create<ScheduleFlexibleTimeWindow>(ScheduleFlexibleTimeWindow.fromMap((map['flexibleTimeWindow'] as Map).cast<String, dynamic>())),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduleExpression: map['scheduleExpression'] == null ? null : pulumi.Output.create<String>(map['scheduleExpression'] as String),
      scheduleExpressionTimezone: map['scheduleExpressionTimezone'] == null ? null : pulumi.Output.create<String>(map['scheduleExpressionTimezone'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      target: map['target'] == null ? null : pulumi.Output.create<ScheduleTarget>(ScheduleTarget.fromMap((map['target'] as Map).cast<String, dynamic>())),
    );
  }
}

