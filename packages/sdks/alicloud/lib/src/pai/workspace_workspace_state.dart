// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceWorkspace resources.
class WorkspaceWorkspaceState {
  /// The UTC time when the workspace is created. The time format is ISO8601.
  final pulumi.Input<String>? createTime;
  /// Workspace description, no more than 80 characters.
  final pulumi.Input<String>? description;
  /// It is recommended that you name the workspace based on the business attribute to identify the purpose of the workspace. If not configured, the default value is the workspace name.
  final pulumi.Input<String>? displayName;
  /// Environments contained in the workspace:
  /// - Simple mode only production environment (prod).
  /// - Standard mode includes development environment (dev) and production environment (prod).
  final pulumi.Input<List<String>>? envTypes;
  /// Workspace state, possible values:
  final pulumi.Input<String>? status;
  /// The workspace name. The format is as follows:
  /// - 3 to 23 characters in length and can contain letters, underscores, or numbers.
  /// - Must start with a large or small letter.
  /// - Unique in the current region.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [WorkspaceWorkspaceState].
  /// [createTime] The UTC time when the workspace is created. The time format is ISO8601.
  /// [description] Workspace description, no more than 80 characters.
  /// [displayName] It is recommended that you name the workspace based on the business attribute to identify the purpose of the workspace. If not configured, the default value is the workspace name.
  /// [envTypes] Environments contained in the workspace:
  /// [status] Workspace state, possible values:
  /// [workspaceName] The workspace name. The format is as follows:
  WorkspaceWorkspaceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? envTypes,
    pulumi.Output<String>? status,
    pulumi.Output<String>? workspaceName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      envTypes = pulumi.Input.asOptionalInput<List<String>>(envTypes),
      status = pulumi.Input.asOptionalInput<String>(status),
      workspaceName = pulumi.Input.asOptionalInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'envTypes': ?envTypes,
      'status': ?status,
      'workspaceName': ?workspaceName,
    };
  }

  factory WorkspaceWorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceWorkspaceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      envTypes: map['envTypes'] == null ? null : pulumi.Output.create<List<String>>((map['envTypes'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      workspaceName: map['workspaceName'] == null ? null : pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

