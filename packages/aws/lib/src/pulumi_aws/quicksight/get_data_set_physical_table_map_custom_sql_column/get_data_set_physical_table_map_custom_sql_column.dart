// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetPhysicalTableMapCustomSqlColumn {
  final String name;
  final String type;

  GetDataSetPhysicalTableMapCustomSqlColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetDataSetPhysicalTableMapCustomSqlColumn.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapCustomSqlColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
