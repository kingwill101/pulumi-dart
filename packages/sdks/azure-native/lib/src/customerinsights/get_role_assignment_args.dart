// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_customerinsights_get_role_assignment_args_doc}
/// Arguments for getRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_get_role_assignment_args_doc}
class GetRoleAssignmentArgs {
  /// The name of the role assignment.
  final pulumi.Input<String> assignmentName;

  /// The name of the hub.
  final pulumi.Input<String> hubName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRoleAssignmentArgs].
  /// [assignmentName] The name of the role assignment.
  /// [hubName] The name of the hub.
  /// [resourceGroupName] The name of the resource group.
  GetRoleAssignmentArgs({
    required this.assignmentName,
    required this.hubName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': assignmentName,
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArgs(
      assignmentName: pulumi.Input.fromValue(map['assignmentName'] as String),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
