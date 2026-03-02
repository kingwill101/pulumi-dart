// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_index_response.dart';
import 'resource_restore_parameters_response.dart';

class MongoDBCollectionGetPropertiesResponseResource {
  /// Analytical TTL.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// Enum to indicate the mode of resource creation.
  final pulumi.Input<String>? createMode;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB MongoDB collection
  final pulumi.Input<String> id;
  /// List of index keys
  final pulumi.Input<List<MongoIndexResponse>>? indexes;
  /// Parameters to indicate the information about the restore
  final pulumi.Input<ResourceRestoreParametersResponse>? restoreParameters;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// A key-value pair of shard keys to be applied for the request.
  final pulumi.Input<Map<String, String>>? shardKey;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;

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
      'indexes': ?pulumi.Input.mapOptionalInputValue<List<MongoIndexResponse>, List<Map<String, dynamic>>>(indexes, (value) => pulumi.Input.encodeList<MongoIndexResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<ResourceRestoreParametersResponse, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'rid': rid,
      'shardKey': ?shardKey,
      'ts': ts,
    };
  }

  factory MongoDBCollectionGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return MongoDBCollectionGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl'] as int).input(),
      createMode: map['createMode'] == null ? null : (map['createMode'] as String).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      indexes: map['indexes'] == null ? null : (pulumi.Input.decodeList<MongoIndexResponse>(map['indexes'], (value) => MongoIndexResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (ResourceRestoreParametersResponse.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>())).input(),
      rid: (map['rid'] as String).input(),
      shardKey: map['shardKey'] == null ? null : ((map['shardKey'] as Map).cast<String, String>()).input(),
      ts: (map['ts'] as double).input(),
    );
  }
}

