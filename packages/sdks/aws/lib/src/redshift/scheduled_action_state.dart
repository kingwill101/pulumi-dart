// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_target_action.dart';

/// Input properties used for looking up and filtering ScheduledAction resources.
class ScheduledActionState {
  /// The description of the scheduled action.
  final pulumi.Input<String>? description;
  /// Whether to enable the scheduled action. Default is `true` .
  final pulumi.Input<bool>? enable;
  /// The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  final pulumi.Input<String>? endTime;
  /// The IAM role to assume to run the scheduled action.
  final pulumi.Input<String>? iamRole;
  /// The scheduled action name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  final pulumi.Input<String>? schedule;
  /// The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  final pulumi.Input<String>? startTime;
  /// Target action. Documented below.
  final pulumi.Input<ScheduledActionTargetAction>? targetAction;

  /// Creates a new [ScheduledActionState].
  /// [description] The description of the scheduled action.
  /// [enable] Whether to enable the scheduled action. Default is `true` .
  /// [endTime] The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  /// [iamRole] The IAM role to assume to run the scheduled action.
  /// [name] The scheduled action name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] The schedule of action. The schedule is defined format of "at expression" or "cron expression", for example `at(2016-03-04T17:27:00)` or `cron(0 10 ? * MON *)`. See [Scheduled Action](https://docs.aws.amazon.com/redshift/latest/APIReference/API_ScheduledAction.html) for more information.
  /// [startTime] The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ).
  /// [targetAction] Target action. Documented below.
  ScheduledActionState({
    this.description,
    this.enable,
    this.endTime,
    this.iamRole,
    this.name,
    this.region,
    this.schedule,
    this.startTime,
    this.targetAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enable': ?enable,
      'endTime': ?endTime,
      'iamRole': ?iamRole,
      'name': ?name,
      'region': ?region,
      'schedule': ?schedule,
      'startTime': ?startTime,
      'targetAction': ?pulumi.Input.mapOptionalInputValue<ScheduledActionTargetAction, Map<String, dynamic>>(targetAction, (value) => value.toMap()),
    };
  }

  factory ScheduledActionState.fromMap(Map<String, dynamic> map) {
    return ScheduledActionState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRole: (() { final guardedValue = map['iamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAction: (() { final guardedValue = map['targetAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledActionTargetAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

