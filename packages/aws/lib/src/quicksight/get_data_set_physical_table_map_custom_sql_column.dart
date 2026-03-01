// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetPhysicalTableMapCustomSqlColumn {
  final String name;
  final String type;

  /// Creates a new [GetDataSetPhysicalTableMapCustomSqlColumn].
  /// [name] Required.
  /// [type] Required.
  GetDataSetPhysicalTableMapCustomSqlColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory GetDataSetPhysicalTableMapCustomSqlColumn.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataSetPhysicalTableMapCustomSqlColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
