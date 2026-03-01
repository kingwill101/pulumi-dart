// ignore_for_file: unused_element, unnecessary_cast


/// The status of the operation performed on the gallery image
class GalleryImageStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the gallery image
  final String? operationId;
  /// The status of the operation performed on the gallery image [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [GalleryImageStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the gallery image
  /// [status] The status of the operation performed on the gallery image [Succeeded, Failed, InProgress]
  GalleryImageStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory GalleryImageStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      status: map['status'] as String,
    );
  }
}

