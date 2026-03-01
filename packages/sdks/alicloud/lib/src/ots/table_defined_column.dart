// ignore_for_file: unused_element, unnecessary_cast


class TableDefinedColumn {
  /// Name for defined column.
  final String name;
  /// Type for defined column. `Integer`, `String`, `Binary`, `Double`, `Boolean` is allowed.
  final String type;

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
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

