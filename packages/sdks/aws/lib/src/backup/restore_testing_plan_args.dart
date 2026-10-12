// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_plan_recovery_point_selection.dart';

/// {@template pulumi_backup_restore_testing_plan_restore_testing_plan_args_doc}
/// The set of arguments for RestoreTestingPlan.
/// {@endtemplate}
/// {@macro pulumi_backup_restore_testing_plan_restore_testing_plan_args_doc}
class RestoreTestingPlanArgs {
  /// Name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  final pulumi.Input<String?>? name;
  /// Recovery point selection configuration. See `recoveryPointSelection` below.
  final pulumi.Input<RestoreTestingPlanRecoveryPointSelection> recoveryPointSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Schedule expression for the restore testing plan.
  final pulumi.Input<String> scheduleExpression;
  /// Timezone for the schedule expression. If not provided, the state value will be used.
  final pulumi.Input<String?>? scheduleExpressionTimezone;
  /// Number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  final pulumi.Input<int?>? startWindowHours;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RestoreTestingPlanArgs].
  /// [name] Name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  /// [recoveryPointSelection] Recovery point selection configuration. See `recoveryPointSelection` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleExpression] Schedule expression for the restore testing plan.
  /// [scheduleExpressionTimezone] Timezone for the schedule expression. If not provided, the state value will be used.
  /// [startWindowHours] Number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const RestoreTestingPlanArgs({
    this.name,
    required this.recoveryPointSelection,
    this.region,
    required this.scheduleExpression,
    this.scheduleExpressionTimezone,
    this.startWindowHours,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryPointSelection': pulumi.Input.mapInputValue<RestoreTestingPlanRecoveryPointSelection, Map<String, dynamic>>(recoveryPointSelection, (value) => value.toMap()),
      'region': ?region,
      'scheduleExpression': scheduleExpression,
      'scheduleExpressionTimezone': ?scheduleExpressionTimezone,
      'startWindowHours': ?startWindowHours,
      'tags': ?tags,
    };
  }

  factory RestoreTestingPlanArgs.fromMap(Map<String, dynamic> map) {
    return RestoreTestingPlanArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointSelection: pulumi.Input.fromValue(RestoreTestingPlanRecoveryPointSelection.fromMap((map['recoveryPointSelection']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpression: pulumi.Input.fromValue(map['scheduleExpression'] as String),
      scheduleExpressionTimezone: (() { final guardedValue = map['scheduleExpressionTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startWindowHours: (() { final guardedValue = map['startWindowHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
