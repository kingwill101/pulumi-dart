// ignore_for_file: unused_element, unnecessary_cast


class GetTablesTableDefinedColumn {
  final String name;
  final String type;

  /// Creates a new [GetTablesTableDefinedColumn].
  /// [name] Required.
  /// [type] Required.
  GetTablesTableDefinedColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetTablesTableDefinedColumn.fromMap(Map<String, dynamic> map) {
    return GetTablesTableDefinedColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

