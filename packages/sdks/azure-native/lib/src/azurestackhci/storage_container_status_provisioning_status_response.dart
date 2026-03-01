// ignore_for_file: unused_element, unnecessary_cast


/// Storage container provisioning status
class StorageContainerStatusProvisioningStatusResponse {
  /// The ID of the operation performed on the storage container
  final String? operationId;
  /// The status of the operation performed on the storage container [Succeeded, Failed, InProgress]
  final String status;

  /// Creates a new [StorageContainerStatusProvisioningStatusResponse].
  /// [operationId] The ID of the operation performed on the storage container
  /// [status] The status of the operation performed on the storage container [Succeeded, Failed, InProgress]
  StorageContainerStatusProvisioningStatusResponse({
    this.operationId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': ?operationId,
      'status': status,
    };
  }

  factory StorageContainerStatusProvisioningStatusResponse.fromMap(Map<String, dynamic> map) {
    return StorageContainerStatusProvisioningStatusResponse(
      operationId: map['operationId'] == null ? null : map['operationId'] as String,
      status: map['status'] as String,
    );
  }
}

