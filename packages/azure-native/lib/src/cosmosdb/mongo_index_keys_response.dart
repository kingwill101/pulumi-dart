// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB MongoDB collection resource object
class MongoIndexKeysResponse {
  /// List of keys for each MongoDB collection in the Azure Cosmos DB service
  final List<String>? keys;

  /// Creates a new [MongoIndexKeysResponse].
  /// [keys] List of keys for each MongoDB collection in the Azure Cosmos DB service
  MongoIndexKeysResponse({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory MongoIndexKeysResponse.fromMap(Map<String, dynamic> map) {
    return MongoIndexKeysResponse(
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
    );
  }
}

