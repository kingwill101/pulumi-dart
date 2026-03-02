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
    required this.accessibility,
    this.codeBranch,
    this.codeCommit,
    required this.codeRepo,
    this.codeRepoAccessToken,
    this.codeRepoUserName,
    this.description,
    required this.displayName,
    required this.mountPath,
    required this.workspaceId,
  });

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
      accessibility: (map['accessibility'] as String).input(),
      codeBranch: map['codeBranch'] == null ? null : (map['codeBranch'] as String).input(),
      codeCommit: map['codeCommit'] == null ? null : (map['codeCommit'] as String).input(),
      codeRepo: (map['codeRepo'] as String).input(),
      codeRepoAccessToken: map['codeRepoAccessToken'] == null ? null : (map['codeRepoAccessToken'] as String).input(),
      codeRepoUserName: map['codeRepoUserName'] == null ? null : (map['codeRepoUserName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      mountPath: (map['mountPath'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

