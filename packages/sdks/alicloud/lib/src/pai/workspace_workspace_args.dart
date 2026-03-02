// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_workspace_workspace_workspace_workspace_args_doc}
/// The set of arguments for WorkspaceWorkspace.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_workspace_workspace_workspace_args_doc}
class WorkspaceWorkspaceArgs {
  /// Workspace description, no more than 80 characters.
  final pulumi.Input<String> description;
  /// It is recommended that you name the workspace based on the business attribute to identify the purpose of the workspace. If not configured, the default value is the workspace name.
  final pulumi.Input<String>? displayName;
  /// Environments contained in the workspace:
  /// - Simple mode only production environment (prod).
  /// - Standard mode includes development environment (dev) and production environment (prod).
  final pulumi.Input<List<String>> envTypes;
  /// The workspace name. The format is as follows:
  /// - 3 to 23 characters in length and can contain letters, underscores, or numbers.
  /// - Must start with a large or small letter.
  /// - Unique in the current region.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceWorkspaceArgs].
  /// [description] Workspace description, no more than 80 characters.
  /// [displayName] It is recommended that you name the workspace based on the business attribute to identify the purpose of the workspace. If not configured, the default value is the workspace name.
  /// [envTypes] Environments contained in the workspace:
  /// [workspaceName] The workspace name. The format is as follows:
  WorkspaceWorkspaceArgs({
    required this.description,
    this.displayName,
    required this.envTypes,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': ?displayName,
      'envTypes': envTypes,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceWorkspaceArgs(
      description: (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      envTypes: ((map['envTypes'] as List).cast<String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

