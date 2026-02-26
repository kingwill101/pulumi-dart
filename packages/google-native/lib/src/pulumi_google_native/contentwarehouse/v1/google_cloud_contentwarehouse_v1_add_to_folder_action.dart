// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for adding document under a folder.
class GoogleCloudContentwarehouseV1AddToFolderAction {
  /// Names of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final List<String>? folders;

  GoogleCloudContentwarehouseV1AddToFolderAction({
    this.folders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final foldersValue = folders;
    if (foldersValue != null) {
      map['folders'] = foldersValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1AddToFolderAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1AddToFolderAction(
      folders: map['folders'] == null
          ? null
          : (map['folders'] as List).cast<String>(),
    );
  }
}
