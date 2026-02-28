// ignore_for_file: unused_element, unnecessary_cast

class PartitionStorageDescriptorColumn {
  /// Free-form text comment.
  final String? comment;
  final String name;

  /// The datatype of data in the Column.
  final String? type;

  /// Creates a new [PartitionStorageDescriptorColumn].
  /// [comment] Free-form text comment.
  /// [name] Required.
  /// [type] The datatype of data in the Column.
  PartitionStorageDescriptorColumn({
    this.comment,
    required this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['name'] = name;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory PartitionStorageDescriptorColumn.fromMap(Map<String, dynamic> map) {
    return PartitionStorageDescriptorColumn(
      comment: map['comment'] == null ? null : map['comment'] as String,
      name: map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
