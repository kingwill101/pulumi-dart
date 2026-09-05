// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_plan_recovery_point_selection.dart';

/// Input properties used for looking up and filtering RestoreTestingPlan resources.
class RestoreTestingPlanState {
  /// ARN of the Restore Testing Plan.
  final pulumi.Input<String?>? arn;
  /// The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  final pulumi.Input<String?>? name;
  /// Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  final pulumi.Input<RestoreTestingPlanRecoveryPointSelection?>? recoveryPointSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The schedule expression for the restore testing plan.
  final pulumi.Input<String?>? scheduleExpression;
  /// The timezone for the schedule expression. If not provided, the state value will be used.
  final pulumi.Input<String?>? scheduleExpressionTimezone;
  /// The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  final pulumi.Input<int?>? startWindowHours;
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [RestoreTestingPlanState].
  /// [arn] ARN of the Restore Testing Plan.
  /// [name] The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  /// [recoveryPointSelection] Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleExpression] The schedule expression for the restore testing plan.
  /// [scheduleExpressionTimezone] The timezone for the schedule expression. If not provided, the state value will be used.
  /// [startWindowHours] The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const RestoreTestingPlanState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryPointSelection: (() { final guardedValue = map['recoveryPointSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreTestingPlanRecoveryPointSelection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpression: (() { final guardedValue = map['scheduleExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleExpressionTimezone: (() { final guardedValue = map['scheduleExpressionTimezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startWindowHours: (() { final guardedValue = map['startWindowHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
