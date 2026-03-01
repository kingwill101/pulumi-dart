// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_index_response.dart';
import 'resource_restore_parameters_response.dart';

class MongoDBCollectionGetPropertiesResponseResource {
  /// Analytical TTL.
  final int? analyticalStorageTtl;
  /// Enum to indicate the mode of resource creation.
  final String? createMode;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB MongoDB collection
  final String id;
  /// List of index keys
  final List<MongoIndexResponse>? indexes;
  /// Parameters to indicate the information about the restore
  final ResourceRestoreParametersResponse? restoreParameters;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A key-value pair of shard keys to be applied for the request.
  final Map<String, String>? shardKey;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;

  /// Creates a new [MongoDBCollectionGetPropertiesResponseResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [createMode] Enum to indicate the mode of resource creation.
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB MongoDB collection
  /// [indexes] List of index keys
  /// [restoreParameters] Parameters to indicate the information about the restore
  /// [rid] A system generated property. A unique identifier.
  /// [shardKey] A key-value pair of shard keys to be applied for the request.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  MongoDBCollectionGetPropertiesResponseResource({
    this.analyticalStorageTtl,
    this.createMode,
    required this.etag,
    required this.id,
    this.indexes,
    this.restoreParameters,
    required this.rid,
    this.shardKey,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'createMode': ?createMode,
      'etag': etag,
      'id': id,
      'indexes': ?indexes == null ? null : pulumi.Input.encodeList<MongoIndexResponse, Map<String, dynamic>>(indexes!, (value) => value.toMap()),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'rid': rid,
      'shardKey': ?shardKey,
      'ts': ts,
    };
  }

  factory MongoDBCollectionGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return MongoDBCollectionGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as int,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      indexes: map['indexes'] == null ? null : pulumi.Input.decodeList<MongoIndexResponse>(map['indexes'], (value) => MongoIndexResponse.fromMap((value as Map).cast<String, dynamic>())),
      restoreParameters: map['restoreParameters'] == null ? null : ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      rid: map['rid'] as String,
      shardKey: map['shardKey'] == null ? null : (map['shardKey'] as Map).cast<String, String>(),
      ts: map['ts'] as double,
    );
  }
}

