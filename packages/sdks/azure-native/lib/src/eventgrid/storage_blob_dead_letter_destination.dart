// ignore_for_file: unused_element, unnecessary_cast


/// Information about the storage blob based dead letter destination.
class StorageBlobDeadLetterDestination {
  /// The name of the Storage blob container that is the destination of the deadletter events
  final String? blobContainerName;
  /// Type of the endpoint for the dead letter destination
  /// Expected value is 'StorageBlob'.
  final String endpointType;
  /// The Azure Resource ID of the storage account that is the destination of the deadletter events
  final String? resourceId;

  /// Creates a new [StorageBlobDeadLetterDestination].
  /// [blobContainerName] The name of the Storage blob container that is the destination of the deadletter events
  /// [endpointType] Type of the endpoint for the dead letter destination
  /// [resourceId] The Azure Resource ID of the storage account that is the destination of the deadletter events
  StorageBlobDeadLetterDestination({
    this.blobContainerName,
    required this.endpointType,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerName': ?blobContainerName,
      'endpointType': endpointType,
      'resourceId': ?resourceId,
    };
  }

  factory StorageBlobDeadLetterDestination.fromMap(Map<String, dynamic> map) {
    return StorageBlobDeadLetterDestination(
      blobContainerName: map['blobContainerName'] == null ? null : map['blobContainerName'] as String,
      endpointType: map['endpointType'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

