// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for deleting the document.
class GoogleCloudContentwarehouseV1DeleteDocumentActionResponse {
  /// Boolean field to select between hard vs soft delete options. Set 'true' for 'hard delete' and 'false' for 'soft delete'.
  final bool enableHardDelete;

  GoogleCloudContentwarehouseV1DeleteDocumentActionResponse({
    required this.enableHardDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableHardDelete'] = enableHardDelete;
    return map;
  }

  factory GoogleCloudContentwarehouseV1DeleteDocumentActionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DeleteDocumentActionResponse(
      enableHardDelete: map['enableHardDelete'] as bool,
    );
  }
}
