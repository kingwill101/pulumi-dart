// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduled_action_target_action/scheduled_action_target_action.dart';

/// The set of arguments for ScheduledAction.
class ScheduledActionRedshiftArgs {
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

  ScheduledActionRedshiftArgs({
    this.description,
    this.enable,
    this.endTime,
    required this.iamRole,
    this.name,
    this.region,
    required this.schedule,
    this.startTime,
    required this.targetAction,
  });

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

  factory ScheduledActionRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionRedshiftArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enable: pulumi.Input.asOptionalInput<bool>(map['enable']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      iamRole: pulumi.Input.asInput<String>(map['iamRole']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schedule: pulumi.Input.asInput<String>(map['schedule']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
      targetAction: pulumi.Input.asInput<ScheduledActionTargetAction>(
          map['targetAction']),
    );
  }
}
