// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Cassandra table partition key
class CassandraPartitionKey {
  /// Name of the Cosmos DB Cassandra table partition key
  final pulumi.Input<String>? name;

  /// Creates a new [CassandraPartitionKey].
  /// [name] Name of the Cosmos DB Cassandra table partition key
  const CassandraPartitionKey({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CassandraPartitionKey.fromMap(Map<String, dynamic> map) {
    return CassandraPartitionKey(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

