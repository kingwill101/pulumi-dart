// ignore_for_file: unused_element, unnecessary_cast


class GetFoldersFolder {
  /// The ID of the Folder.
  final String folderId;
  /// The Name of the Folder.
  final String folderName;
  /// The ID of the Resource Manager Folder.
  final String id;
  /// The ID of the parent folder. **NOTE:** If `parent_folder_id` is not set, the information of the first-level subfolders of the Root folder is queried.
  final String parentFolderId;

  /// Creates a new [GetFoldersFolder].
  /// [folderId] The ID of the Folder.
  /// [folderName] The Name of the Folder.
  /// [id] The ID of the Resource Manager Folder.
  /// [parentFolderId] The ID of the parent folder. **NOTE:** If `parent_folder_id` is not set, the information of the first-level subfolders of the Root folder is queried.
  GetFoldersFolder({
    required this.folderId,
    required this.folderName,
    required this.id,
    required this.parentFolderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'folderName': folderName,
      'id': id,
      'parentFolderId': parentFolderId,
    };
  }

  factory GetFoldersFolder.fromMap(Map<String, dynamic> map) {
    return GetFoldersFolder(
      folderId: map['folderId'] as String,
      folderName: map['folderName'] as String,
      id: map['id'] as String,
      parentFolderId: map['parentFolderId'] as String,
    );
  }
}

