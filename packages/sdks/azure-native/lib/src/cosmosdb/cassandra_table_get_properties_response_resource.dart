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
  const CassandraTableGetPropertiesResponseResource({
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
      analyticalStorageTtl: (() { final guardedValue = map['analyticalStorageTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultTtl: (() { final guardedValue = map['defaultTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      rid: pulumi.Input.fromValue(map['rid'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CassandraSchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ts: pulumi.Input.fromValue(map['ts'] as double),
    );
  }
}

