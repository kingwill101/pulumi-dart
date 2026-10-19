// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableSchemaDefinitionColumn {
  /// Name of the column.
  final pulumi.Input<String> name;
  /// Data type of the column. See the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types) for a list of available data types.
  final pulumi.Input<String> type;

  /// Creates a new [TableSchemaDefinitionColumn].
  /// [name] Name of the column.
  /// [type] Data type of the column. See the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types) for a list of available data types.
  const TableSchemaDefinitionColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory TableSchemaDefinitionColumn.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
