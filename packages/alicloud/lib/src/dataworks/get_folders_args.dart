// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_get_folders_get_folders_args_doc}
/// Arguments for getFolders.
/// {@endtemplate}
/// {@macro pulumi_dataworks_get_folders_get_folders_args_doc}
class GetFoldersArgs {
  /// A list of Folder IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The parent folder path.
  final pulumi.Input<String> parentFolderPath;
  /// The ID of the project.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetFoldersArgs].
  /// [ids] A list of Folder IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentFolderPath] The parent folder path.
  /// [projectId] The ID of the project.
  GetFoldersArgs({
    List<String>? ids,
    String? outputFile,
    required String parentFolderPath,
    required String projectId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parentFolderPath = pulumi.Input.asInput<String>(parentFolderPath),
      projectId = pulumi.Input.asInput<String>(projectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'parentFolderPath': parentFolderPath,
      'projectId': projectId,
    };
  }

  factory GetFoldersArgs.fromMap(Map<String, dynamic> map) {
    return GetFoldersArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parentFolderPath: map['parentFolderPath'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

