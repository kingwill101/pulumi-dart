// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_plan_recovery_point_selection.dart';

/// Input properties used for looking up and filtering RestoreTestingPlan resources.
class RestoreTestingPlanState {
  /// ARN of the Restore Testing Plan.
  final pulumi.Input<String>? arn;
  /// The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  final pulumi.Input<String>? name;
  /// Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  final pulumi.Input<RestoreTestingPlanRecoveryPointSelection>? recoveryPointSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The schedule expression for the restore testing plan.
  final pulumi.Input<String>? scheduleExpression;
  /// The timezone for the schedule expression. If not provided, the state value will be used.
  final pulumi.Input<String>? scheduleExpressionTimezone;
  /// The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  final pulumi.Input<int>? startWindowHours;
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RestoreTestingPlanState].
  /// [arn] ARN of the Restore Testing Plan.
  /// [name] The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  /// [recoveryPointSelection] Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleExpression] The schedule expression for the restore testing plan.
  /// [scheduleExpressionTimezone] The timezone for the schedule expression. If not provided, the state value will be used.
  /// [startWindowHours] The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RestoreTestingPlanState({
    this.arn,
    this.name,
    this.recoveryPointSelection,
    this.region,
    this.scheduleExpression,
    this.scheduleExpressionTimezone,
    this.startWindowHours,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'recoveryPointSelection': ?pulumi.Input.mapOptionalInputValue<RestoreTestingPlanRecoveryPointSelection, Map<String, dynamic>>(recoveryPointSelection, (value) => value.toMap()),
      'region': ?region,
      'scheduleExpression': ?scheduleExpression,
      'scheduleExpressionTimezone': ?scheduleExpressionTimezone,
      'startWindowHours': ?startWindowHours,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RestoreTestingPlanState.fromMap(Map<String, dynamic> map) {
    return RestoreTestingPlanState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      recoveryPointSelection: map['recoveryPointSelection'] == null ? null : ((RestoreTestingPlanRecoveryPointSelection.fromMap((map['recoveryPointSelection']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scheduleExpression: map['scheduleExpression'] == null ? null : ((map['scheduleExpression'] as String).input()).input(),
      scheduleExpressionTimezone: map['scheduleExpressionTimezone'] == null ? null : ((map['scheduleExpressionTimezone'] as String).input()).input(),
      startWindowHours: map['startWindowHours'] == null ? null : ((map['startWindowHours'] as int).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

