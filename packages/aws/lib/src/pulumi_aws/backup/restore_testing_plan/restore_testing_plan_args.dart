// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_testing_plan_recovery_point_selection/restore_testing_plan_recovery_point_selection.dart';

/// The set of arguments for RestoreTestingPlan.
class RestoreTestingPlanArgs {
  /// The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  final Input<String>? name;

  /// Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  final Input<RestoreTestingPlanRecoveryPointSelection> recoveryPointSelection;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The schedule expression for the restore testing plan.
  final Input<String> scheduleExpression;

  /// The timezone for the schedule expression. If not provided, the state value will be used.
  final Input<String>? scheduleExpressionTimezone;

  /// The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  final Input<int>? startWindowHours;
  final Input<Map<String, String>>? tags;

  RestoreTestingPlanArgs({
    this.name,
    required this.recoveryPointSelection,
    this.region,
    required this.scheduleExpression,
    this.scheduleExpressionTimezone,
    this.startWindowHours,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['recoveryPointSelection'] = Input.mapInputValue<
        RestoreTestingPlanRecoveryPointSelection,
        Map<String, dynamic>>(recoveryPointSelection, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scheduleExpression'] = scheduleExpression;
    final scheduleExpressionTimezoneValue = scheduleExpressionTimezone;
    if (scheduleExpressionTimezoneValue != null) {
      map['scheduleExpressionTimezone'] = scheduleExpressionTimezoneValue;
    }
    final startWindowHoursValue = startWindowHours;
    if (startWindowHoursValue != null) {
      map['startWindowHours'] = startWindowHoursValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RestoreTestingPlanArgs.fromMap(Map<String, dynamic> map) {
    return RestoreTestingPlanArgs(
      name: Input.asOptionalInput<String>(map['name']),
      recoveryPointSelection:
          Input.asInput<RestoreTestingPlanRecoveryPointSelection>(
              map['recoveryPointSelection']),
      region: Input.asOptionalInput<String>(map['region']),
      scheduleExpression: Input.asInput<String>(map['scheduleExpression']),
      scheduleExpressionTimezone:
          Input.asOptionalInput<String>(map['scheduleExpressionTimezone']),
      startWindowHours: Input.asOptionalInput<int>(map['startWindowHours']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
