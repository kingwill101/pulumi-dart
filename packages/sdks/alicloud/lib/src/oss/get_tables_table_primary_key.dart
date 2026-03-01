// ignore_for_file: unused_element, unnecessary_cast


class GetTablesTablePrimaryKey {
  final String name;
  final String type;

  /// Creates a new [GetTablesTablePrimaryKey].
  /// [name] Required.
  /// [type] Required.
  GetTablesTablePrimaryKey({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetTablesTablePrimaryKey.fromMap(Map<String, dynamic> map) {
    return GetTablesTablePrimaryKey(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

