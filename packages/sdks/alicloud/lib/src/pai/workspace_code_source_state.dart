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
    pulumi.Output<String>? accessibility,
    pulumi.Output<String>? codeBranch,
    pulumi.Output<String>? codeCommit,
    pulumi.Output<String>? codeRepo,
    pulumi.Output<String>? codeRepoAccessToken,
    pulumi.Output<String>? codeRepoUserName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? mountPath,
    pulumi.Output<String>? workspaceId,
  }) :
      accessibility = pulumi.Input.asOptionalInput<String>(accessibility),
      codeBranch = pulumi.Input.asOptionalInput<String>(codeBranch),
      codeCommit = pulumi.Input.asOptionalInput<String>(codeCommit),
      codeRepo = pulumi.Input.asOptionalInput<String>(codeRepo),
      codeRepoAccessToken = pulumi.Input.asOptionalInput<String>(codeRepoAccessToken),
      codeRepoUserName = pulumi.Input.asOptionalInput<String>(codeRepoUserName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      mountPath = pulumi.Input.asOptionalInput<String>(mountPath),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      accessibility: map['accessibility'] == null ? null : pulumi.Output.create<String>(map['accessibility'] as String),
      codeBranch: map['codeBranch'] == null ? null : pulumi.Output.create<String>(map['codeBranch'] as String),
      codeCommit: map['codeCommit'] == null ? null : pulumi.Output.create<String>(map['codeCommit'] as String),
      codeRepo: map['codeRepo'] == null ? null : pulumi.Output.create<String>(map['codeRepo'] as String),
      codeRepoAccessToken: map['codeRepoAccessToken'] == null ? null : pulumi.Output.create<String>(map['codeRepoAccessToken'] as String),
      codeRepoUserName: map['codeRepoUserName'] == null ? null : pulumi.Output.create<String>(map['codeRepoUserName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      mountPath: map['mountPath'] == null ? null : pulumi.Output.create<String>(map['mountPath'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

