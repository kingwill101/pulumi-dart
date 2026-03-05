// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableDefinedColumn {
  /// Name for defined column.
  final pulumi.Input<String> name;
  /// Type for defined column. `Integer`, `String`, `Binary`, `Double`, `Boolean` is allowed.
  final pulumi.Input<String> type;

  /// Creates a new [TableDefinedColumn].
  /// [name] Name for defined column.
  /// [type] Type for defined column. `Integer`, `String`, `Binary`, `Double`, `Boolean` is allowed.
  TableDefinedColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory TableDefinedColumn.fromMap(Map<String, dynamic> map) {
    return TableDefinedColumn(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

