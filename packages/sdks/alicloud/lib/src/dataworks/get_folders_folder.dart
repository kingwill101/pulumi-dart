// ignore_for_file: unused_element, unnecessary_cast


class GetFoldersFolder {
  final String folderId;
  /// Folder Path.
  final String folderPath;
  /// The Folder ID.
  final String id;
  /// The ID of the project.
  final String projectId;

  /// Creates a new [GetFoldersFolder].
  /// [folderId] Required.
  /// [folderPath] Folder Path.
  /// [id] The Folder ID.
  /// [projectId] The ID of the project.
  GetFoldersFolder({
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
      folderId: map['folderId'] as String,
      folderPath: map['folderPath'] as String,
      id: map['id'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

