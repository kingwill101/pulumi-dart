// ignore_for_file: unused_element, unnecessary_cast

class GetDataSetLogicalTableMapDataTransformUntagColumnOperation {
  final String columnName;
  final List<String> tagNames;

  /// Creates a new [GetDataSetLogicalTableMapDataTransformUntagColumnOperation].
  /// [columnName] Required.
  /// [tagNames] Required.
  GetDataSetLogicalTableMapDataTransformUntagColumnOperation({
    required this.columnName,
    required this.tagNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnName'] = columnName;
    map['tagNames'] = tagNames;
    return map;
  }

  factory GetDataSetLogicalTableMapDataTransformUntagColumnOperation.fromMap(
      Map<String, dynamic> map) {
    return GetDataSetLogicalTableMapDataTransformUntagColumnOperation(
      columnName: map['columnName'] as String,
      tagNames: (map['tagNames'] as List).cast<String>(),
    );
  }
}
