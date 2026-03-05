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
      accessibility: (() { final guardedValue = map['accessibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeBranch: (() { final guardedValue = map['codeBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeCommit: (() { final guardedValue = map['codeCommit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeRepo: (() { final guardedValue = map['codeRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeRepoAccessToken: (() { final guardedValue = map['codeRepoAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeRepoUserName: (() { final guardedValue = map['codeRepoUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

