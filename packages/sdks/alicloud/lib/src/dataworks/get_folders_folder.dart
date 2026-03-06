// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFoldersFolder {
  final pulumi.Input<String> folderId;
  /// Folder Path.
  final pulumi.Input<String> folderPath;
  /// The Folder ID.
  final pulumi.Input<String> id;
  /// The ID of the project.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetFoldersFolder].
  /// [folderId] Required.
  /// [folderPath] Folder Path.
  /// [id] The Folder ID.
  /// [projectId] The ID of the project.
  const GetFoldersFolder({
    required this.folderId,
    required this.folderPath,
    required this.id,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'folderPath': folderPath,
      'id': id,
      'projectId': projectId,
    };
  }

  factory GetFoldersFolder.fromMap(Map<String, dynamic> map) {
    return GetFoldersFolder(
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      folderPath: pulumi.Input.fromValue(map['folderPath'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

