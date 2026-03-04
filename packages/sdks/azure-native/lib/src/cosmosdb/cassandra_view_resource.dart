// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Cassandra view resource object
class CassandraViewResource {
  /// Name of the Cosmos DB Cassandra view
  final pulumi.Input<String> id;

  /// View Definition of the Cosmos DB Cassandra view
  final pulumi.Input<String> viewDefinition;

  /// Creates a new [CassandraViewResource].
  /// [id] Name of the Cosmos DB Cassandra view
  /// [viewDefinition] View Definition of the Cosmos DB Cassandra view
  CassandraViewResource({required this.id, required this.viewDefinition});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'viewDefinition': viewDefinition};
  }

  factory CassandraViewResource.fromMap(Map<String, dynamic> map) {
    return CassandraViewResource(
      id: pulumi.Input.fromValue(map['id'] as String),
      viewDefinition: pulumi.Input.fromValue(map['viewDefinition'] as String),
    );
  }
}
