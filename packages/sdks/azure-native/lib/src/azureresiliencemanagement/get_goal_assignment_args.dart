// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureresiliencemanagement_get_goal_assignment_args_doc}
/// Arguments for getGoalAssignment.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_get_goal_assignment_args_doc}
class GetGoalAssignmentArgs {
  /// The name of the GoalAssignment
  final pulumi.Input<String> goalAssignmentName;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GetGoalAssignmentArgs].
  /// [goalAssignmentName] The name of the GoalAssignment
  /// [serviceGroupName] The name of the service group.
  const GetGoalAssignmentArgs({
    required this.goalAssignmentName,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goalAssignmentName': goalAssignmentName,
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GetGoalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGoalAssignmentArgs(
      goalAssignmentName: pulumi.Input.fromValue(map['goalAssignmentName'] as String),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
