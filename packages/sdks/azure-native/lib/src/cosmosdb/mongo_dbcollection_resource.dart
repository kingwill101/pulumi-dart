// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_index.dart';
import 'resource_restore_parameters.dart';

/// Cosmos DB MongoDB collection resource object
class MongoDBCollectionResource {
  /// Analytical TTL.
  final int? analyticalStorageTtl;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// Name of the Cosmos DB MongoDB collection
  final String id;
  /// List of index keys
  final List<MongoIndex>? indexes;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParameters? restoreParameters;
  /// A key-value pair of shard keys to be applied for the request.
  final Map<String, String>? shardKey;

  /// Creates a new [MongoDBCollectionResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [id] Name of the Cosmos DB MongoDB collection
  /// [indexes] List of index keys
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [shardKey] A key-value pair of shard keys to be applied for the request.
  MongoDBCollectionResource({
    this.analyticalStorageTtl,
    this.createMode,
    required this.id,
    this.indexes,
    this.restoreParameters,
    this.shardKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'createMode': ?createMode,
      'id': id,
      'indexes': ?indexes == null ? null : pulumi.Input.encodeList<MongoIndex, Map<String, dynamic>>(indexes!, (value) => value.toMap()),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'shardKey': ?shardKey,
    };
  }

  factory MongoDBCollectionResource.fromMap(Map<String, dynamic> map) {
    return MongoDBCollectionResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as int,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      id: map['id'] as String,
      indexes: map['indexes'] == null ? null : pulumi.Input.decodeList<MongoIndex>(map['indexes'], (value) => MongoIndex.fromMap((value as Map).cast<String, dynamic>())),
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      shardKey: map['shardKey'] == null ? null : (map['shardKey'] as Map).cast<String, String>(),
    );
  }
}

