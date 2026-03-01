// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_item.dart';

/// {@template pulumi_securityinsights_workspace_manager_assignment_args_doc}
/// The set of arguments for WorkspaceManagerAssignment.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_workspace_manager_assignment_args_doc}
class WorkspaceManagerAssignmentArgs {
  /// List of resources included in this workspace manager assignment
  final pulumi.Input<List<AssignmentItem>> items;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the workspace manager group targeted by the workspace manager assignment
  final pulumi.Input<String> targetResourceName;
  /// The name of the workspace manager assignment
  final pulumi.Input<String>? workspaceManagerAssignmentName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceManagerAssignmentArgs].
  /// [items] List of resources included in this workspace manager assignment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetResourceName] The resource name of the workspace manager group targeted by the workspace manager assignment
  /// [workspaceManagerAssignmentName] The name of the workspace manager assignment
  /// [workspaceName] The name of the workspace.
  WorkspaceManagerAssignmentArgs({
    required List<AssignmentItem> items,
    required String resourceGroupName,
    required String targetResourceName,
    String? workspaceManagerAssignmentName,
    required String workspaceName,
  }) :
      items = pulumi.Input.asInput<List<AssignmentItem>>(items),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetResourceName = pulumi.Input.asInput<String>(targetResourceName),
      workspaceManagerAssignmentName = pulumi.Input.asOptionalInput<String>(workspaceManagerAssignmentName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<AssignmentItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<AssignmentItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'targetResourceName': targetResourceName,
      'workspaceManagerAssignmentName': ?workspaceManagerAssignmentName,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceManagerAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceManagerAssignmentArgs(
      items: pulumi.Input.decodeList<AssignmentItem>(map['items'], (value) => AssignmentItem.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      targetResourceName: map['targetResourceName'] as String,
      workspaceManagerAssignmentName: map['workspaceManagerAssignmentName'] == null ? null : map['workspaceManagerAssignmentName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

