// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageBlobDestination {
  /// The container name of the Storage Blob.
  final pulumi.Input<String>? containerName;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// The resource ID of the storage account.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [StorageBlobDestination].
  /// [containerName] The container name of the Storage Blob.
  /// [name] A friendly name for the destination.
  /// [storageAccountResourceId] The resource ID of the storage account.
  StorageBlobDestination({
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

  factory StorageBlobDestination.fromMap(Map<String, dynamic> map) {
    return StorageBlobDestination(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId'] as String).input(),
    );
  }
}

