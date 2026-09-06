// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the storage blob based dead letter destination.
class StorageBlobDeadLetterDestination {
  /// The name of the Storage blob container that is the destination of the deadletter events
  final pulumi.Input<String?>? blobContainerName;
  /// Type of the endpoint for the dead letter destination
  /// Expected value is 'StorageBlob'.
  final pulumi.Input<String> endpointType;
  /// The Azure Resource ID of the storage account that is the destination of the deadletter events
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [StorageBlobDeadLetterDestination].
  /// [blobContainerName] The name of the Storage blob container that is the destination of the deadletter events
  /// [endpointType] Type of the endpoint for the dead letter destination
  /// [resourceId] The Azure Resource ID of the storage account that is the destination of the deadletter events
  const StorageBlobDeadLetterDestination({
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
      blobContainerName: (() { final guardedValue = map['blobContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
