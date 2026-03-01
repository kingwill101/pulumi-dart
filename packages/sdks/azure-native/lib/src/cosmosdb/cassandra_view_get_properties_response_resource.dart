// ignore_for_file: unused_element, unnecessary_cast


class CassandraViewGetPropertiesResponseResource {
  /// A system generated property representing the resource etag required for optimistic concurrency control.
  final String etag;
  /// Name of the Cosmos DB Cassandra view
  final String id;
  /// A system generated property. A unique identifier.
  final String rid;
  /// A system generated property that denotes the last updated timestamp of the resource.
  final double ts;
  /// View Definition of the Cosmos DB Cassandra view
  final String viewDefinition;

  /// Creates a new [CassandraViewGetPropertiesResponseResource].
  /// [etag] A system generated property representing the resource etag required for optimistic concurrency control.
  /// [id] Name of the Cosmos DB Cassandra view
  /// [rid] A system generated property. A unique identifier.
  /// [ts] A system generated property that denotes the last updated timestamp of the resource.
  /// [viewDefinition] View Definition of the Cosmos DB Cassandra view
  CassandraViewGetPropertiesResponseResource({
    required this.etag,
    required this.id,
    required this.rid,
    required this.ts,
    required this.viewDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'rid': rid,
      'ts': ts,
      'viewDefinition': viewDefinition,
    };
  }

  factory CassandraViewGetPropertiesResponseResource.fromMap(Map<String, dynamic> map) {
    return CassandraViewGetPropertiesResponseResource(
      etag: map['etag'] as String,
      id: map['id'] as String,
      rid: map['rid'] as String,
      ts: map['ts'] as double,
      viewDefinition: map['viewDefinition'] as String,
    );
  }
}

