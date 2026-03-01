// ignore_for_file: unused_element, unnecessary_cast


class GetDataSetPhysicalTableMapRelationalTableInputColumn {
  final String name;
  final String type;

  /// Creates a new [GetDataSetPhysicalTableMapRelationalTableInputColumn].
  /// [name] Required.
  /// [type] Required.
  GetDataSetPhysicalTableMapRelationalTableInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetDataSetPhysicalTableMapRelationalTableInputColumn.fromMap(Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapRelationalTableInputColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

