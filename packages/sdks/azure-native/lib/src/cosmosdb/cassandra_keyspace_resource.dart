// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Cassandra keyspace id object
class CassandraKeyspaceResource {
  /// Name of the Cosmos DB Cassandra keyspace
  final pulumi.Input<String> id;

  /// Creates a new [CassandraKeyspaceResource].
  /// [id] Name of the Cosmos DB Cassandra keyspace
  const CassandraKeyspaceResource({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory CassandraKeyspaceResource.fromMap(Map<String, dynamic> map) {
    return CassandraKeyspaceResource(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

