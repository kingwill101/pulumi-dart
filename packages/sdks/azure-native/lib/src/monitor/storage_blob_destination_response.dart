// ignore_for_file: unused_element, unnecessary_cast


class StorageBlobDestinationResponse {
  /// The container name of the Storage Blob.
  final String? containerName;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;
  /// The resource ID of the storage account.
  final String? storageAccountResourceId;

  /// Creates a new [StorageBlobDestinationResponse].
  /// [containerName] The container name of the Storage Blob.
  /// [name] A friendly name for the destination.
  /// [storageAccountResourceId] The resource ID of the storage account.
  StorageBlobDestinationResponse({
    this.containerName,
    this.name,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'name': ?name,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory StorageBlobDestinationResponse.fromMap(Map<String, dynamic> map) {
    return StorageBlobDestinationResponse(
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
    );
  }
}

