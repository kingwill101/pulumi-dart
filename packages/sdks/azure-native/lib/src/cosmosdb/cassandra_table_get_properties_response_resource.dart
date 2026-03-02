// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_schema_response.dart';

class CassandraTableGetPropertiesResponseResource {
  /// Analytical TTL.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// Time to live of the Cosmos DB Cassandra table
  final pulumi.Input<int>? defaultTtl;
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final pulumi.Input<String> etag;
  /// Name of the Cosmos DB Cassandra table
  final pulumi.Input<String> id;
  /// A system generated property. A unique identifier.
  final pulumi.Input<String> rid;
  /// Schema of the Cosmos DB Cassandra table
  final pulumi.Input<CassandraSchemaResponse>? schema;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final pulumi.Input<double> ts;

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
      'schema': ?pulumi.Input.mapOptionalInputValue<CassandraSchemaResponse, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'ts': ts,
    };
  }

  factory CassandraTableGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return CassandraTableGetPropertiesResponseResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl']! as int).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl']! as int).input(),
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      rid: (map['rid'] as String).input(),
      schema: map['schema'] == null ? null : (CassandraSchemaResponse.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      ts: (map['ts'] as double).input(),
    );
  }
}

