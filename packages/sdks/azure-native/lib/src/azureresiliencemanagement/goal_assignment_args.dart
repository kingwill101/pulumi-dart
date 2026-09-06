// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goal_assignment_properties.dart';

/// {@template pulumi_azureresiliencemanagement_goal_assignment_args_doc}
/// The set of arguments for GoalAssignment.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_goal_assignment_args_doc}
class GoalAssignmentArgs {
  /// The name of the GoalAssignment
  final pulumi.Input<String?>? goalAssignmentName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<GoalAssignmentProperties?>? properties;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GoalAssignmentArgs].
  /// [goalAssignmentName] The name of the GoalAssignment
  /// [properties] The resource-specific properties for this resource.
  /// [serviceGroupName] The name of the service group.
  const GoalAssignmentArgs({
    this.goalAssignmentName,
    this.properties,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goalAssignmentName': ?goalAssignmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<GoalAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GoalAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GoalAssignmentArgs(
      goalAssignmentName: (() { final guardedValue = map['goalAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoalAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
