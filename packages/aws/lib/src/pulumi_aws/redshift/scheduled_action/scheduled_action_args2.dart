// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../scheduled_action_target_action/scheduled_action_target_action.dart';

/// The set of arguments for ScheduledAction.
class ScheduledActionArgs2 {
  /// The description of the scheduled action.
  final Input<String>? description;

  /// Whether to enable the scheduled action. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> .
  final Input<bool>? enable;

  /// The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  final Input<String>? endTime;

  /// The IAM role to assume to run the scheduled action.
  final Input<String> iamRole;

  /// The scheduled action name.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  final Input<String> schedule;

  /// The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  final Input<String>? startTime;

  /// Target action. Documented below.
  final Input<ScheduledActionTargetAction> targetAction;

  ScheduledActionArgs2({
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
    map['targetAction'] =
        Input.mapInputValue<ScheduledActionTargetAction, Map<String, dynamic>>(
            targetAction, (value) => value.toMap());
    return map;
  }

  factory ScheduledActionArgs2.fromMap(Map<String, dynamic> map) {
    return ScheduledActionArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      enable: Input.asOptionalInput<bool>(map['enable']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      iamRole: Input.asInput<String>(map['iamRole']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      schedule: Input.asInput<String>(map['schedule']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      targetAction:
          Input.asInput<ScheduledActionTargetAction>(map['targetAction']),
    );
  }
}
