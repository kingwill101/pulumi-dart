// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_index_keys_response.dart';
import 'mongo_index_options_response.dart';

/// Cosmos DB MongoDB collection index key
class MongoIndexResponse {
  /// Cosmos DB MongoDB collection index keys
  final MongoIndexKeysResponse? key;
  /// Cosmos DB MongoDB collection index key options
  final MongoIndexOptionsResponse? options;

  /// Creates a new [MongoIndexResponse].
  /// [key] Cosmos DB MongoDB collection index keys
  /// [options] Cosmos DB MongoDB collection index key options
  MongoIndexResponse({
    this.key,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key == null ? null : key!.toMap(),
      'options': ?options == null ? null : options!.toMap(),
    };
  }

  factory MongoIndexResponse.fromMap(Map<String, dynamic> map) {
    return MongoIndexResponse(
      key: map['key'] == null ? null : MongoIndexKeysResponse.fromMap((map['key'] as Map).cast<String, dynamic>()),
      options: map['options'] == null ? null : MongoIndexOptionsResponse.fromMap((map['options'] as Map).cast<String, dynamic>()),
    );
  }
}

