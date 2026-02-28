// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_plan_recovery_point_selection.dart';

/// {@template pulumi_backup_restore_testing_plan_restore_testing_plan_args_doc}
/// The set of arguments for RestoreTestingPlan.
/// {@endtemplate}
/// {@macro pulumi_backup_restore_testing_plan_restore_testing_plan_args_doc}
class RestoreTestingPlanArgs {
  /// The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  final pulumi.Input<String>? name;
  /// Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  final pulumi.Input<RestoreTestingPlanRecoveryPointSelection> recoveryPointSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The schedule expression for the restore testing plan.
  final pulumi.Input<String> scheduleExpression;
  /// The timezone for the schedule expression. If not provided, the state value will be used.
  final pulumi.Input<String>? scheduleExpressionTimezone;
  /// The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  final pulumi.Input<int>? startWindowHours;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RestoreTestingPlanArgs].
  /// [name] The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  /// [recoveryPointSelection] Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleExpression] The schedule expression for the restore testing plan.
  /// [scheduleExpressionTimezone] The timezone for the schedule expression. If not provided, the state value will be used.
  /// [startWindowHours] The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  /// [tags] Optional.
  RestoreTestingPlanArgs({
    String? name,
    required RestoreTestingPlanRecoveryPointSelection recoveryPointSelection,
    String? region,
    required String scheduleExpression,
    String? scheduleExpressionTimezone,
    int? startWindowHours,
    Map<String, String>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryPointSelection = pulumi.Input.asInput<RestoreTestingPlanRecoveryPointSelection>(recoveryPointSelection),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduleExpression = pulumi.Input.asInput<String>(scheduleExpression),
      scheduleExpressionTimezone = pulumi.Input.asOptionalInput<String>(scheduleExpressionTimezone),
      startWindowHours = pulumi.Input.asOptionalInput<int>(startWindowHours),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      name: map['name'] == null ? null : map['name'] as String,
      recoveryPointSelection: RestoreTestingPlanRecoveryPointSelection.fromMap((map['recoveryPointSelection'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
      scheduleExpressionTimezone: map['scheduleExpressionTimezone'] == null ? null : map['scheduleExpressionTimezone'] as String,
      startWindowHours: map['startWindowHours'] == null ? null : map['startWindowHours'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

