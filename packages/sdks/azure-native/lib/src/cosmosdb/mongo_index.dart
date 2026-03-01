// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_index_keys.dart';
import 'mongo_index_options.dart';

/// Cosmos DB MongoDB collection index key
class MongoIndex {
  /// Cosmos DB MongoDB collection index keys
  final MongoIndexKeys? key;
  /// Cosmos DB MongoDB collection index key options
  final MongoIndexOptions? options;

  /// Creates a new [MongoIndex].
  /// [key] Cosmos DB MongoDB collection index keys
  /// [options] Cosmos DB MongoDB collection index key options
  MongoIndex({
    this.key,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key == null ? null : key!.toMap(),
      'options': ?options == null ? null : options!.toMap(),
    };
  }

  factory MongoIndex.fromMap(Map<String, dynamic> map) {
    return MongoIndex(
      key: map['key'] == null ? null : MongoIndexKeys.fromMap((map['key'] as Map).cast<String, dynamic>()),
      options: map['options'] == null ? null : MongoIndexOptions.fromMap((map['options'] as Map).cast<String, dynamic>()),
    );
  }
}

