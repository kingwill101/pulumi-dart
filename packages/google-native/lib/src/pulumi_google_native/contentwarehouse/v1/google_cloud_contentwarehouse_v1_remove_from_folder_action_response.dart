// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for remove a document from a specific folder.
class GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse {
  /// Condition of the action to be executed.
  final String condition;

  /// Name of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final String folder;

  GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse({
    required this.condition,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition;
    map['folder'] = folder;
    return map;
  }

  factory GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse(
      condition: map['condition'] as String,
      folder: map['folder'] as String,
    );
  }
}
