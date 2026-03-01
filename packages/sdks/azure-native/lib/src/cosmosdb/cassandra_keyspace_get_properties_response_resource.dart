// ignore_for_file: unused_element, unnecessary_cast


class CassandraKeyspaceGetPropertiesResponseResource {
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB Cassandra keyspace
  final String id;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;

  /// Creates a new [CassandraKeyspaceGetPropertiesResponseResource].
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB Cassandra keyspace
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  CassandraKeyspaceGetPropertiesResponseResource({
    required this.etag,
    required this.id,
    required this.rid,
    required this.ts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'rid': rid,
      'ts': ts,
    };
  }

  factory CassandraKeyspaceGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return CassandraKeyspaceGetPropertiesResponseResource(
      etag: map['etag'] as String,
      id: map['id'] as String,
      rid: map['rid'] as String,
      ts: map['ts'] as double,
    );
  }
}

