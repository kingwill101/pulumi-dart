// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceCodeSource resources.
class WorkspaceCodeSourceState {
  /// Visibility of the code configuration, possible values:
  /// - PRIVATE: In this workspace, it is only visible to you and the administrator.
  /// - PUBLIC: In this workspace, it is visible to everyone.
  final pulumi.Input<String>? accessibility;
  /// Code repository branch.
  final pulumi.Input<String>? codeBranch;
  /// The code CommitId.
  final pulumi.Input<String>? codeCommit;
  /// Code repository address.
  final pulumi.Input<String>? codeRepo;
  /// The Token used to access the code repository.
  final pulumi.Input<String>? codeRepoAccessToken;
  /// The user name of the code repository.
  final pulumi.Input<String>? codeRepoUserName;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// A detailed description of the code configuration.
  final pulumi.Input<String>? description;
  /// Code source configuration name.
  final pulumi.Input<String>? displayName;
  /// The local Mount Directory of the code.
  final pulumi.Input<String>? mountPath;
  /// The ID of the workspace.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceCodeSourceState].
  /// [accessibility] Visibility of the code configuration, possible values:
  /// [codeBranch] Code repository branch.
  /// [codeCommit] The code CommitId.
  /// [codeRepo] Code repository address.
  /// [codeRepoAccessToken] The Token used to access the code repository.
  /// [codeRepoUserName] The user name of the code repository.
  /// [createTime] The creation time of the resource
  /// [description] A detailed description of the code configuration.
  /// [displayName] Code source configuration name.
  /// [mountPath] The local Mount Directory of the code.
  /// [workspaceId] The ID of the workspace.
  WorkspaceCodeSourceState({
    this.accessibility,
    this.codeBranch,
    this.codeCommit,
    this.codeRepo,
    this.codeRepoAccessToken,
    this.codeRepoUserName,
    this.createTime,
    this.description,
    this.displayName,
    this.mountPath,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'codeBranch': ?codeBranch,
      'codeCommit': ?codeCommit,
      'codeRepo': ?codeRepo,
      'codeRepoAccessToken': ?codeRepoAccessToken,
      'codeRepoUserName': ?codeRepoUserName,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'mountPath': ?mountPath,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceCodeSourceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceCodeSourceState(
      accessibility: map['accessibility'] == null ? null : (map['accessibility']! as String).input(),
      codeBranch: map['codeBranch'] == null ? null : (map['codeBranch']! as String).input(),
      codeCommit: map['codeCommit'] == null ? null : (map['codeCommit']! as String).input(),
      codeRepo: map['codeRepo'] == null ? null : (map['codeRepo']! as String).input(),
      codeRepoAccessToken: map['codeRepoAccessToken'] == null ? null : (map['codeRepoAccessToken']! as String).input(),
      codeRepoUserName: map['codeRepoUserName'] == null ? null : (map['codeRepoUserName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

