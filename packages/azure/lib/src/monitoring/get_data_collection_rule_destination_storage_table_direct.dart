// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDestinationStorageTableDirect {
  /// Specifies the name of the Data Collection Rule.
  final String name;
  /// The resource ID of the Storage Account.
  final String storageAccountId;
  /// The Storage Table name.
  final String tableName;

  /// Creates a new [GetDataCollectionRuleDestinationStorageTableDirect].
  /// [name] Specifies the name of the Data Collection Rule.
  /// [storageAccountId] The resource ID of the Storage Account.
  /// [tableName] The Storage Table name.
  GetDataCollectionRuleDestinationStorageTableDirect({
    required this.name,
    required this.storageAccountId,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageAccountId': storageAccountId,
      'tableName': tableName,
    };
  }

  factory GetDataCollectionRuleDestinationStorageTableDirect.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDestinationStorageTableDirect(
      name: map['name'] as String,
      storageAccountId: map['storageAccountId'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

