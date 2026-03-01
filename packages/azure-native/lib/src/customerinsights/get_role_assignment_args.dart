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
    required String assignmentName,
    required String hubName,
    required String resourceGroupName,
  }) :
      assignmentName = pulumi.Input.asInput<String>(assignmentName),
      hubName = pulumi.Input.asInput<String>(hubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentName': assignmentName,
      'hubName': hubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArgs(
      assignmentName: map['assignmentName'] as String,
      hubName: map['hubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

