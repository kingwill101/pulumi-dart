// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetPhysicalTableMapS3SourceInputColumn {
  final String name;
  final String type;

  /// Creates a new [GetDataSetPhysicalTableMapS3SourceInputColumn].
  /// [name] Required.
  /// [type] Required.
  GetDataSetPhysicalTableMapS3SourceInputColumn({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    return map;
  }

  factory GetDataSetPhysicalTableMapS3SourceInputColumn.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetPhysicalTableMapS3SourceInputColumn(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}
