// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB MongoDB collection resource object
class MongoIndexKeys {
  /// List of keys for each MongoDB collection in the Azure Cosmos DB service
  final List<String>? keys;

  /// Creates a new [MongoIndexKeys].
  /// [keys] List of keys for each MongoDB collection in the Azure Cosmos DB service
  MongoIndexKeys({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory MongoIndexKeys.fromMap(Map<String, dynamic> map) {
    return MongoIndexKeys(
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
    );
  }
}

