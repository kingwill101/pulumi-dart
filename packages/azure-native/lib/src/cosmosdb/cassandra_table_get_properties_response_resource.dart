// ignore_for_file: unused_element, unnecessary_cast

import 'cassandra_schema_response.dart';

class CassandraTableGetPropertiesResponseResource {
  /// Analytical TTL.
  final int? analyticalStorageTtl;
  /// Time to live of the Cosmos DB Cassandra table
  final int? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB Cassandra table
  final String id;
  /// A system generated property. A unique identifier.
  final String rid;
  /// Schema of the Cosmos DB Cassandra table
  final CassandraSchemaResponse? schema;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;

  /// Creates a new [CassandraTableGetPropertiesResponseResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [defaultTtl] Time to live of the Cosmos DB Cassandra table
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB Cassandra table
  /// [rid] A system generated property. A unique identifier.
  /// [schema] Schema of the Cosmos DB Cassandra table
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  CassandraTableGetPropertiesResponseResource({
    this.analyticalStorageTtl,
    this.defaultTtl,
    required this.etag,
    required this.id,
    required this.rid,
    this.schema,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'defaultTtl': ?defaultTtl,
      'etag': etag,
      'id': id,
      'rid': rid,
      'schema': ?schema == null ? null : schema!.toMap(),
      'ts': ts,
    };
  }

  factory CassandraTableGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return CassandraTableGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : map['analyticalStorageTtl'] as int,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      etag: map['etag'] as String,
      id: map['id'] as String,
      rid: map['rid'] as String,
      schema: map['schema'] == null ? null : CassandraSchemaResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      ts: map['ts'] as double,
    );
  }
}

