// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Folder resources.
class FolderState {
  final pulumi.Input<String>? folderId;
  /// Folder Path. The folder path composed with for part: `Business Flow/{Business Flow Name}/[folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined]/{Directory Name}`. The first segment of path must be `Business Flow`, and sencond segment of path must be a Business Flow Name within the project. The third part of path must be one of those keywords:`folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined`. Then the finial part of folder path can be specified in yourself.
  final pulumi.Input<String>? folderPath;
  /// The ID of the project.
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? projectIdentifier;

  /// Creates a new [FolderState].
  /// [folderId] Optional.
  /// [folderPath] Folder Path. The folder path composed with for part: `Business Flow/{Business Flow Name}/[folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined]/{Directory Name}`. The first segment of path must be `Business Flow`, and sencond segment of path must be a Business Flow Name within the project. The third part of path must be one of those keywords:`folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined`. Then the finial part of folder path can be specified in yourself.
  /// [projectId] The ID of the project.
  /// [projectIdentifier] Optional.
  FolderState({
    pulumi.Output<String>? folderId,
    pulumi.Output<String>? folderPath,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? projectIdentifier,
  }) :
      folderId = pulumi.Input.asOptionalInput<String>(folderId),
      folderPath = pulumi.Input.asOptionalInput<String>(folderPath),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      projectIdentifier = pulumi.Input.asOptionalInput<String>(projectIdentifier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': ?folderId,
      'folderPath': ?folderPath,
      'projectId': ?projectId,
      'projectIdentifier': ?projectIdentifier,
    };
  }

  factory FolderState.fromMap(Map<String, dynamic> map) {
    return FolderState(
      folderId: map['folderId'] == null ? null : pulumi.Output.create<String>(map['folderId'] as String),
      folderPath: map['folderPath'] == null ? null : pulumi.Output.create<String>(map['folderPath'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      projectIdentifier: map['projectIdentifier'] == null ? null : pulumi.Output.create<String>(map['projectIdentifier'] as String),
    );
  }
}

