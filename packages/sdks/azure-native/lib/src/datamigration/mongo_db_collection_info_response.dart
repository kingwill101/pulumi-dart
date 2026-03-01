// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_db_shard_key_info_response.dart';

/// Describes a supported collection within a MongoDB database
class MongoDbCollectionInfoResponse {
  /// The average document size, or -1 if the average size is unknown
  final double averageDocumentSize;
  /// The estimated total data size, in bytes, or -1 if the size is unknown.
  final double dataSize;
  /// The name of the database containing the collection
  final String databaseName;
  /// The estimated total number of documents, or -1 if the document count is unknown
  final double documentCount;
  /// Whether the collection is a capped collection (i.e. whether it has a fixed size and acts like a circular buffer)
  final bool isCapped;
  /// Whether the collection is system collection
  final bool isSystemCollection;
  /// Whether the collection is a view of another collection
  final bool isView;
  /// The unqualified name of the database or collection
  final String name;
  /// The qualified name of the database or collection. For a collection, this is the database-qualified name.
  final String qualifiedName;
  /// The shard key on the collection, or null if the collection is not sharded
  final MongoDbShardKeyInfoResponse? shardKey;
  /// Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  final bool supportsSharding;
  /// The name of the collection that this is a view of, if IsView is true
  final String? viewOf;

  /// Creates a new [MongoDbCollectionInfoResponse].
  /// [averageDocumentSize] The average document size, or -1 if the average size is unknown
  /// [dataSize] The estimated total data size, in bytes, or -1 if the size is unknown.
  /// [databaseName] The name of the database containing the collection
  /// [documentCount] The estimated total number of documents, or -1 if the document count is unknown
  /// [isCapped] Whether the collection is a capped collection (i.e. whether it has a fixed size and acts like a circular buffer)
  /// [isSystemCollection] Whether the collection is system collection
  /// [isView] Whether the collection is a view of another collection
  /// [name] The unqualified name of the database or collection
  /// [qualifiedName] The qualified name of the database or collection. For a collection, this is the database-qualified name.
  /// [shardKey] The shard key on the collection, or null if the collection is not sharded
  /// [supportsSharding] Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  /// [viewOf] The name of the collection that this is a view of, if IsView is true
  MongoDbCollectionInfoResponse({
    required this.averageDocumentSize,
    required this.dataSize,
    required this.databaseName,
    required this.documentCount,
    required this.isCapped,
    required this.isSystemCollection,
    required this.isView,
    required this.name,
    required this.qualifiedName,
    this.shardKey,
    required this.supportsSharding,
    this.viewOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageDocumentSize': averageDocumentSize,
      'dataSize': dataSize,
      'databaseName': databaseName,
      'documentCount': documentCount,
      'isCapped': isCapped,
      'isSystemCollection': isSystemCollection,
      'isView': isView,
      'name': name,
      'qualifiedName': qualifiedName,
      'shardKey': ?shardKey == null ? null : shardKey!.toMap(),
      'supportsSharding': supportsSharding,
      'viewOf': ?viewOf,
    };
  }

  factory MongoDbCollectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbCollectionInfoResponse(
      averageDocumentSize: map['averageDocumentSize'] as double,
      dataSize: map['dataSize'] as double,
      databaseName: map['databaseName'] as String,
      documentCount: map['documentCount'] as double,
      isCapped: map['isCapped'] as bool,
      isSystemCollection: map['isSystemCollection'] as bool,
      isView: map['isView'] as bool,
      name: map['name'] as String,
      qualifiedName: map['qualifiedName'] as String,
      shardKey: map['shardKey'] == null ? null : MongoDbShardKeyInfoResponse.fromMap((map['shardKey'] as Map).cast<String, dynamic>()),
      supportsSharding: map['supportsSharding'] as bool,
      viewOf: map['viewOf'] == null ? null : map['viewOf'] as String,
    );
  }
}

