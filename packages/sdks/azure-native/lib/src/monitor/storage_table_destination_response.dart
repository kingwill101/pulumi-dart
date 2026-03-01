// ignore_for_file: unused_element, unnecessary_cast


class StorageTableDestinationResponse {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;
  /// The resource ID of the storage account.
  final String? storageAccountResourceId;
  /// The name of the Storage Table.
  final String? tableName;

  /// Creates a new [StorageTableDestinationResponse].
  /// [name] A friendly name for the destination.
  /// [storageAccountResourceId] The resource ID of the storage account.
  /// [tableName] The name of the Storage Table.
  StorageTableDestinationResponse({
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
      name: map['name'] == null ? null : map['name'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}

