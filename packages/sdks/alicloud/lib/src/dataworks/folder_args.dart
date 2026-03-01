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
    required pulumi.Output<String> folderPath,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? projectIdentifier,
  }) :
      folderPath = pulumi.Input.asInput<String>(folderPath),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      projectIdentifier = pulumi.Input.asOptionalInput<String>(projectIdentifier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderPath': folderPath,
      'projectId': ?projectId,
      'projectIdentifier': ?projectIdentifier,
    };
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      folderPath: pulumi.Output.create<String>(map['folderPath'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      projectIdentifier: map['projectIdentifier'] == null ? null : pulumi.Output.create<String>(map['projectIdentifier'] as String),
    );
  }
}

