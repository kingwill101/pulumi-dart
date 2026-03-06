// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_shard_key_info_response.dart';

/// Describes a supported collection within a MongoDB database
class MongoDbCollectionInfoResponse {
  /// The average document size, or -1 if the average size is unknown
  final pulumi.Input<double> averageDocumentSize;
  /// The estimated total data size, in bytes, or -1 if the size is unknown.
  final pulumi.Input<double> dataSize;
  /// The name of the database containing the collection
  final pulumi.Input<String> databaseName;
  /// The estimated total number of documents, or -1 if the document count is unknown
  final pulumi.Input<double> documentCount;
  /// Whether the collection is a capped collection (i.e. whether it has a fixed size and acts like a circular buffer)
  final pulumi.Input<bool> isCapped;
  /// Whether the collection is system collection
  final pulumi.Input<bool> isSystemCollection;
  /// Whether the collection is a view of another collection
  final pulumi.Input<bool> isView;
  /// The unqualified name of the database or collection
  final pulumi.Input<String> name;
  /// The qualified name of the database or collection. For a collection, this is the database-qualified name.
  final pulumi.Input<String> qualifiedName;
  /// The shard key on the collection, or null if the collection is not sharded
  final pulumi.Input<MongoDbShardKeyInfoResponse>? shardKey;
  /// Whether the database has sharding enabled. Note that the migration task will enable sharding on the target if necessary.
  final pulumi.Input<bool> supportsSharding;
  /// The name of the collection that this is a view of, if IsView is true
  final pulumi.Input<String>? viewOf;

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
  const MongoDbCollectionInfoResponse({
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
      'shardKey': ?pulumi.Input.mapOptionalInputValue<MongoDbShardKeyInfoResponse, Map<String, dynamic>>(shardKey, (value) => value.toMap()),
      'supportsSharding': supportsSharding,
      'viewOf': ?viewOf,
    };
  }

  factory MongoDbCollectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbCollectionInfoResponse(
      averageDocumentSize: pulumi.Input.fromValue(map['averageDocumentSize'] as double),
      dataSize: pulumi.Input.fromValue(map['dataSize'] as double),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      documentCount: pulumi.Input.fromValue(map['documentCount'] as double),
      isCapped: pulumi.Input.fromValue(map['isCapped'] as bool),
      isSystemCollection: pulumi.Input.fromValue(map['isSystemCollection'] as bool),
      isView: pulumi.Input.fromValue(map['isView'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      qualifiedName: pulumi.Input.fromValue(map['qualifiedName'] as String),
      shardKey: (() { final guardedValue = map['shardKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoDbShardKeyInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportsSharding: pulumi.Input.fromValue(map['supportsSharding'] as bool),
      viewOf: (() { final guardedValue = map['viewOf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

