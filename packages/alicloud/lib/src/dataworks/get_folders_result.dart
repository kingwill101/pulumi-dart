// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folders_folder.dart';

/// Result data returned by getFolders.
class GetFoldersResult {
  final List<GetFoldersFolder> folders;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String parentFolderPath;
  final String projectId;

  /// Creates a new [GetFoldersResult].
  /// [folders] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [parentFolderPath] Required.
  /// [projectId] Required.
  GetFoldersResult({
    required this.folders,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.parentFolderPath,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folders': pulumi.Input.encodeList<GetFoldersFolder, Map<String, dynamic>>(folders, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'parentFolderPath': parentFolderPath,
      'projectId': projectId,
    };
  }

  factory GetFoldersResult.fromMap(Map<String, dynamic> map) {
    return GetFoldersResult(
      folders: pulumi.Input.decodeList<GetFoldersFolder>(map['folders'], (value) => GetFoldersFolder.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parentFolderPath: map['parentFolderPath'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

