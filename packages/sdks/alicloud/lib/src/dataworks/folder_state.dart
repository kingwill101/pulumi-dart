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
    this.folderId,
    this.folderPath,
    this.projectId,
    this.projectIdentifier,
  });

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
      folderId: map['folderId'] == null ? null : (map['folderId']! as String).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      projectIdentifier: map['projectIdentifier'] == null ? null : (map['projectIdentifier']! as String).input(),
    );
  }
}

