// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageTableDestinationResponse {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// The resource ID of the storage account.
  final pulumi.Input<String>? storageAccountResourceId;
  /// The name of the Storage Table.
  final pulumi.Input<String>? tableName;

  /// Creates a new [StorageTableDestinationResponse].
  /// [name] A friendly name for the destination.
  /// [storageAccountResourceId] The resource ID of the storage account.
  /// [tableName] The name of the Storage Table.
  const StorageTableDestinationResponse({
    this.name,
    this.storageAccountResourceId,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'storageAccountResourceId': ?storageAccountResourceId,
      'tableName': ?tableName,
    };
  }

  factory StorageTableDestinationResponse.fromMap(Map<String, dynamic> map) {
    return StorageTableDestinationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
