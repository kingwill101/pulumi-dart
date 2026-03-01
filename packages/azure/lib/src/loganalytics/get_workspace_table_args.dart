// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loganalytics_get_workspace_table_get_workspace_table_args_doc}
/// Arguments for getWorkspaceTable.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_get_workspace_table_get_workspace_table_args_doc}
class GetWorkspaceTableArgs {
  /// The name of this Log Analytics Workspace Table.
  final pulumi.Input<String> name;
  /// The ID of the Log Analytics Workspace the table belongs to.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceTableArgs].
  /// [name] The name of this Log Analytics Workspace Table.
  /// [workspaceId] The ID of the Log Analytics Workspace the table belongs to.
  GetWorkspaceTableArgs({
    required String name,
    required String workspaceId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceTableArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTableArgs(
      name: map['name'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

