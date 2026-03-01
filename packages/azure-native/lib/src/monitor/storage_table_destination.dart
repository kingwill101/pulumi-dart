// ignore_for_file: unused_element, unnecessary_cast


class StorageTableDestination {
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;
  /// The resource ID of the storage account.
  final String? storageAccountResourceId;
  /// The name of the Storage Table.
  final String? tableName;

  /// Creates a new [StorageTableDestination].
  /// [name] A friendly name for the destination.
  /// [storageAccountResourceId] The resource ID of the storage account.
  /// [tableName] The name of the Storage Table.
  StorageTableDestination({
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

  factory StorageTableDestination.fromMap(Map<String, dynamic> map) {
    return StorageTableDestination(
      name: map['name'] == null ? null : map['name'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : map['storageAccountResourceId'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
    );
  }
}

