// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Cassandra table partition key
class CassandraPartitionKeyResponse {
  /// Name of the Cosmos DB Cassandra table partition key
  final pulumi.Input<String>? name;

  /// Creates a new [CassandraPartitionKeyResponse].
  /// [name] Name of the Cosmos DB Cassandra table partition key
  CassandraPartitionKeyResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CassandraPartitionKeyResponse.fromMap(Map<String, dynamic> map) {
    return CassandraPartitionKeyResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

