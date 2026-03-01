// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_groups_operation_args_doc}
/// Arguments for getGroupsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_groups_operation_args_doc}
class GetGroupsOperationArgs {
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGroupsOperationArgs].
  /// [groupName] Group ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGroupsOperationArgs({
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGroupsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsOperationArgs(
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

