// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_schema.dart';

/// Cosmos DB Cassandra table id object
class CassandraTableResource {
  /// Analytical TTL.
  final pulumi.Input<int>? analyticalStorageTtl;
  /// Time to live of the Cosmos DB Cassandra table
  final pulumi.Input<int>? defaultTtl;
  /// Name of the Cosmos DB Cassandra table
  final pulumi.Input<String> id;
  /// Schema of the Cosmos DB Cassandra table
  final pulumi.Input<CassandraSchema>? schema;

  /// Creates a new [CassandraTableResource].
  /// [analyticalStorageTtl] Analytical TTL.
  /// [defaultTtl] Time to live of the Cosmos DB Cassandra table
  /// [id] Name of the Cosmos DB Cassandra table
  /// [schema] Schema of the Cosmos DB Cassandra table
  CassandraTableResource({
    this.analyticalStorageTtl,
    this.defaultTtl,
    required this.id,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageTtl': ?analyticalStorageTtl,
      'defaultTtl': ?defaultTtl,
      'id': id,
      'schema': ?pulumi.Input.mapOptionalInputValue<CassandraSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
    };
  }

  factory CassandraTableResource.fromMap(Map<String, dynamic> map) {
    return CassandraTableResource(
      analyticalStorageTtl: map['analyticalStorageTtl'] == null ? null : (map['analyticalStorageTtl']! as int).input(),
      defaultTtl: map['defaultTtl'] == null ? null : (map['defaultTtl']! as int).input(),
      id: (map['id'] as String).input(),
      schema: map['schema'] == null ? null : (CassandraSchema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

