// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_workspace_code_source_workspace_code_source_args_doc}
/// The set of arguments for WorkspaceCodeSource.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_code_source_workspace_code_source_args_doc}
class WorkspaceCodeSourceArgs {
  /// Visibility of the code configuration, possible values:
  /// - PRIVATE: In this workspace, it is only visible to you and the administrator.
  /// - PUBLIC: In this workspace, it is visible to everyone.
  final pulumi.Input<String> accessibility;
  /// Code repository branch.
  final pulumi.Input<String>? codeBranch;
  /// The code CommitId.
  final pulumi.Input<String>? codeCommit;
  /// Code repository address.
  final pulumi.Input<String> codeRepo;
  /// The Token used to access the code repository.
  final pulumi.Input<String>? codeRepoAccessToken;
  /// The user name of the code repository.
  final pulumi.Input<String>? codeRepoUserName;
  /// A detailed description of the code configuration.
  final pulumi.Input<String>? description;
  /// Code source configuration name.
  final pulumi.Input<String> displayName;
  /// The local Mount Directory of the code.
  final pulumi.Input<String> mountPath;
  /// The ID of the workspace.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceCodeSourceArgs].
  /// [accessibility] Visibility of the code configuration, possible values:
  /// [codeBranch] Code repository branch.
  /// [codeCommit] The code CommitId.
  /// [codeRepo] Code repository address.
  /// [codeRepoAccessToken] The Token used to access the code repository.
  /// [codeRepoUserName] The user name of the code repository.
  /// [description] A detailed description of the code configuration.
  /// [displayName] Code source configuration name.
  /// [mountPath] The local Mount Directory of the code.
  /// [workspaceId] The ID of the workspace.
  WorkspaceCodeSourceArgs({
    required pulumi.Output<String> accessibility,
    pulumi.Output<String>? codeBranch,
    pulumi.Output<String>? codeCommit,
    required pulumi.Output<String> codeRepo,
    pulumi.Output<String>? codeRepoAccessToken,
    pulumi.Output<String>? codeRepoUserName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> mountPath,
    required pulumi.Output<String> workspaceId,
  }) :
      accessibility = pulumi.Input.asInput<String>(accessibility),
      codeBranch = pulumi.Input.asOptionalInput<String>(codeBranch),
      codeCommit = pulumi.Input.asOptionalInput<String>(codeCommit),
      codeRepo = pulumi.Input.asInput<String>(codeRepo),
      codeRepoAccessToken = pulumi.Input.asOptionalInput<String>(codeRepoAccessToken),
      codeRepoUserName = pulumi.Input.asOptionalInput<String>(codeRepoUserName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      mountPath = pulumi.Input.asInput<String>(mountPath),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': accessibility,
      'codeBranch': ?codeBranch,
      'codeCommit': ?codeCommit,
      'codeRepo': codeRepo,
      'codeRepoAccessToken': ?codeRepoAccessToken,
      'codeRepoUserName': ?codeRepoUserName,
      'description': ?description,
      'displayName': displayName,
      'mountPath': mountPath,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceCodeSourceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceCodeSourceArgs(
      accessibility: pulumi.Output.create<String>(map['accessibility'] as String),
      codeBranch: map['codeBranch'] == null ? null : pulumi.Output.create<String>(map['codeBranch'] as String),
      codeCommit: map['codeCommit'] == null ? null : pulumi.Output.create<String>(map['codeCommit'] as String),
      codeRepo: pulumi.Output.create<String>(map['codeRepo'] as String),
      codeRepoAccessToken: map['codeRepoAccessToken'] == null ? null : pulumi.Output.create<String>(map['codeRepoAccessToken'] as String),
      codeRepoUserName: map['codeRepoUserName'] == null ? null : pulumi.Output.create<String>(map['codeRepoUserName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      mountPath: pulumi.Output.create<String>(map['mountPath'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

