// ignore_for_file: unused_element, unnecessary_cast

class CatalogTableStorageDescriptorColumn {
  /// Free-form text comment.
  final String? comment;

  /// Name of the Column.
  final String name;

  /// Key-value pairs defining properties associated with the column.
  final Map<String, String>? parameters;

  /// Datatype of data in the Column.
  final String? type;

  /// Creates a new [CatalogTableStorageDescriptorColumn].
  /// [comment] Free-form text comment.
  /// [name] Name of the Column.
  /// [parameters] Key-value pairs defining properties associated with the column.
  /// [type] Datatype of data in the Column.
  CatalogTableStorageDescriptorColumn({
    this.comment,
    required this.name,
    this.parameters,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['name'] = name;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory CatalogTableStorageDescriptorColumn.fromMap(
      Map<String, dynamic> map) {
    return CatalogTableStorageDescriptorColumn(
      comment: map['comment'] == null ? null : map['comment'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
