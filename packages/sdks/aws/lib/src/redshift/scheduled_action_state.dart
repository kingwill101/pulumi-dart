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
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enable,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? iamRole,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schedule,
    pulumi.Output<String>? startTime,
    pulumi.Output<ScheduledActionTargetAction>? targetAction,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      iamRole = pulumi.Input.asOptionalInput<String>(iamRole),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asOptionalInput<String>(schedule),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      targetAction = pulumi.Input.asOptionalInput<ScheduledActionTargetAction>(targetAction);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      iamRole: map['iamRole'] == null ? null : pulumi.Output.create<String>(map['iamRole'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<String>(map['schedule'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      targetAction: map['targetAction'] == null ? null : pulumi.Output.create<ScheduledActionTargetAction>(ScheduledActionTargetAction.fromMap((map['targetAction'] as Map).cast<String, dynamic>())),
    );
  }
}

