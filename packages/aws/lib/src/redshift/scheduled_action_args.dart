// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_target_action.dart';

/// {@template pulumi_redshift_scheduled_action_scheduled_action_args_doc}
/// The set of arguments for ScheduledAction.
/// {@endtemplate}
/// {@macro pulumi_redshift_scheduled_action_scheduled_action_args_doc}
class ScheduledActionArgs {
  /// The description of the scheduled action.
  final pulumi.Input<String>? description;

  /// Whether to enable the scheduled action. Default is `true` .
  final pulumi.Input<bool>? enable;

  /// The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  final pulumi.Input<String>? endTime;

  /// The IAM role to assume to run the scheduled action.
  final pulumi.Input<String> iamRole;

  /// The scheduled action name.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  final pulumi.Input<String> schedule;

  /// The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  final pulumi.Input<String>? startTime;

  /// Target action. Documented below.
  final pulumi.Input<ScheduledActionTargetAction> targetAction;

  /// Creates a new [ScheduledActionArgs].
  /// [description] The description of the scheduled action.
  /// [enable] Whether to enable the scheduled action. Default is `true` .
  /// [endTime] The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  /// [iamRole] The IAM role to assume to run the scheduled action.
  /// [name] The scheduled action name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  /// [startTime] The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  /// [targetAction] Target action. Documented below.
  ScheduledActionArgs({
    String? description,
    bool? enable,
    String? endTime,
    required String iamRole,
    String? name,
    String? region,
    required String schedule,
    String? startTime,
    required ScheduledActionTargetAction targetAction,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        enable = pulumi.Input.asOptionalInput<bool>(enable),
        endTime = pulumi.Input.asOptionalInput<String>(endTime),
        iamRole = pulumi.Input.asInput<String>(iamRole),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        schedule = pulumi.Input.asInput<String>(schedule),
        startTime = pulumi.Input.asOptionalInput<String>(startTime),
        targetAction =
            pulumi.Input.asInput<ScheduledActionTargetAction>(targetAction);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['iamRole'] = iamRole;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schedule'] = schedule;
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    map['targetAction'] = pulumi.Input.mapInputValue<
        ScheduledActionTargetAction,
        Map<String, dynamic>>(targetAction, (value) => value.toMap());
    return map;
  }

  factory ScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      iamRole: map['iamRole'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      schedule: map['schedule'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      targetAction: ScheduledActionTargetAction.fromMap(
          (map['targetAction'] as Map).cast<String, dynamic>()),
    );
  }
}
