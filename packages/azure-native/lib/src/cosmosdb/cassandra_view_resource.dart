// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB Cassandra view resource object
class CassandraViewResource {
  /// Name of the Cosmos DB Cassandra view
  final String id;
  /// View Definition of the Cosmos DB Cassandra view
  final String viewDefinition;

  /// Creates a new [CassandraViewResource].
  /// [id] Name of the Cosmos DB Cassandra view
  /// [viewDefinition] View Definition of the Cosmos DB Cassandra view
  CassandraViewResource({
    required this.id,
    required this.viewDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'viewDefinition': viewDefinition,
    };
  }

  factory CassandraViewResource.fromMap(Map<String, dynamic> map) {
    return CassandraViewResource(
      id: map['id'] as String,
      viewDefinition: map['viewDefinition'] as String,
    );
  }
}

