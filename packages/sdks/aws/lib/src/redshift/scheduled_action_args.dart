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
    return <String, dynamic>{
      'description': ?description,
      'enable': ?enable,
      'endTime': ?endTime,
      'iamRole': iamRole,
      'name': ?name,
      'region': ?region,
      'schedule': schedule,
      'startTime': ?startTime,
      'targetAction': pulumi.Input.mapInputValue<ScheduledActionTargetAction, Map<String, dynamic>>(targetAction, (value) => value.toMap()),
    };
  }

  factory ScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      iamRole: (map['iamRole'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      schedule: (map['schedule'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      targetAction: (ScheduledActionTargetAction.fromMap((map['targetAction'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

