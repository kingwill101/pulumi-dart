// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_dataworks_folder_folder_args_doc}
class FolderArgs {
  /// Folder Path. The folder path composed with for part: `Business Flow/{Business Flow Name}/[folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined]/{Directory Name}`. The first segment of path must be `Business Flow`, and sencond segment of path must be a Business Flow Name within the project. The third part of path must be one of those keywords:`folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined`. Then the finial part of folder path can be specified in yourself.
  final pulumi.Input<String> folderPath;
  /// The ID of the project.
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? projectIdentifier;

  /// Creates a new [FolderArgs].
  /// [folderPath] Folder Path. The folder path composed with for part: `Business Flow/{Business Flow Name}/[folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined]/{Directory Name}`. The first segment of path must be `Business Flow`, and sencond segment of path must be a Business Flow Name within the project. The third part of path must be one of those keywords:`folderDi|folderMaxCompute|folderGeneral|folderJdbc|folderUserDefined`. Then the finial part of folder path can be specified in yourself.
  /// [projectId] The ID of the project.
  /// [projectIdentifier] Optional.
  FolderArgs({
    required this.folderPath,
    this.projectId,
    this.projectIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderPath': folderPath,
      'projectId': ?projectId,
      'projectIdentifier': ?projectIdentifier,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      folderPath: (map['folderPath'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      projectIdentifier: map['projectIdentifier'] == null ? null : (map['projectIdentifier']! as String).input(),
    );
  }
}

