// ignore_for_file: unused_element, unnecessary_cast


/// Cosmos DB Cassandra keyspace id object
class CassandraKeyspaceResource {
  /// Name of the Cosmos DB Cassandra keyspace
  final String id;

  /// Creates a new [CassandraKeyspaceResource].
  /// [id] Name of the Cosmos DB Cassandra keyspace
  CassandraKeyspaceResource({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory CassandraKeyspaceResource.fromMap(Map<String, dynamic> map) {
    return CassandraKeyspaceResource(
      id: map['id'] as String,
    );
  }
}

