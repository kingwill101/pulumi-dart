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
  Column({this.name, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'type': ?type};
  }

  factory Column.fromMap(Map<String, dynamic> map) {
    return Column(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
