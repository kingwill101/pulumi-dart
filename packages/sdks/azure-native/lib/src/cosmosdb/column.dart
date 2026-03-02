// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB Cassandra table column
class Column {
  /// Name of the Cosmos DB Cassandra table column
  final pulumi.Input<String>? name;
  /// Type of the Cosmos DB Cassandra table column
  final pulumi.Input<String>? type;

  /// Creates a new [Column].
  /// [name] Name of the Cosmos DB Cassandra table column
  /// [type] Type of the Cosmos DB Cassandra table column
  Column({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory Column.fromMap(Map<String, dynamic> map) {
    return Column(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

