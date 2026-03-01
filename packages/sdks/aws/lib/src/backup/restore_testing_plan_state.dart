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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<RestoreTestingPlanRecoveryPointSelection>? recoveryPointSelection,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scheduleExpression,
    pulumi.Output<String>? scheduleExpressionTimezone,
    pulumi.Output<int>? startWindowHours,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryPointSelection = pulumi.Input.asOptionalInput<RestoreTestingPlanRecoveryPointSelection>(recoveryPointSelection),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduleExpression = pulumi.Input.asOptionalInput<String>(scheduleExpression),
      scheduleExpressionTimezone = pulumi.Input.asOptionalInput<String>(scheduleExpressionTimezone),
      startWindowHours = pulumi.Input.asOptionalInput<int>(startWindowHours),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryPointSelection: map['recoveryPointSelection'] == null ? null : pulumi.Output.create<RestoreTestingPlanRecoveryPointSelection>(RestoreTestingPlanRecoveryPointSelection.fromMap((map['recoveryPointSelection'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduleExpression: map['scheduleExpression'] == null ? null : pulumi.Output.create<String>(map['scheduleExpression'] as String),
      scheduleExpressionTimezone: map['scheduleExpressionTimezone'] == null ? null : pulumi.Output.create<String>(map['scheduleExpressionTimezone'] as String),
      startWindowHours: map['startWindowHours'] == null ? null : pulumi.Output.create<int>(map['startWindowHours'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

