// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for adding document under a folder.
class GoogleCloudContentwarehouseV1AddToFolderActionResponse {
  /// Names of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final List<String> folders;

  GoogleCloudContentwarehouseV1AddToFolderActionResponse({
    required this.folders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folders'] = folders;
    return map;
  }

  factory GoogleCloudContentwarehouseV1AddToFolderActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1AddToFolderActionResponse(
      folders: (map['folders'] as List).cast<String>(),
    );
  }
}
