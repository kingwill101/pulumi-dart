// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableSchemaDefinitionStaticColumn {
  /// Name of the static column.
  final pulumi.Input<String> name;

  /// Creates a new [TableSchemaDefinitionStaticColumn].
  /// [name] Name of the static column.
  const TableSchemaDefinitionStaticColumn({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory TableSchemaDefinitionStaticColumn.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionStaticColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
