// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_index.dart';
import 'resource_restore_parameters.dart';

/// Cosmos DB MongoDB collection resource object
class MongoDBCollectionResource {
  /// Analytical TTL.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// Name of the Cosmos DB MongoDB collection
  final pulumi.Input<String> id;
  /// List of index keys
  final pulumi.Input<List<MongoIndex>>? indexes;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParameters>? restoreParameters;
  /// A key-value pair of shard keys to be applied for the request.
  final pulumi.Input<Map<String, String>>? shardKey;

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
      'indexes': ?pulumi.Input.mapOptionalInputValue<List<MongoIndex>, List<Map<String, dynamic>>>(indexes, (value) => pulumi.Input.encodeList<MongoIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'shardKey': ?shardKey,
    };
  }

  factory MongoDBCollectionResource.fromMap(Map<String, dynamic> map) {
    return MongoDBCollectionResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl'] as int).input(),
      createMode: map['createMode'] == null ? null : (map['createMode'] as String).input(),
      id: (map['id'] as String).input(),
      indexes: map['indexes'] == null ? null : (pulumi.Input.decodeList<MongoIndex>(map['indexes'], (value) => MongoIndex.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>())).input(),
      shardKey: map['shardKey'] == null ? null : ((map['shardKey'] as Map).cast<String, String>()).input(),
    );
  }
}

