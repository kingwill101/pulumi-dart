// ignore_for_file: unused_element, unnecessary_cast

class DataSetOutputColumn {
  /// The description of the column.
  final String? description;

  /// Display name for the dataset.
  ///
  /// The following arguments are optional:
  final String? name;

  /// The data type of the column.
  final String? type;

  /// Creates a new [DataSetOutputColumn].
  /// [description] The description of the column.
  /// [name] Display name for the dataset.
  /// [type] The data type of the column.
  DataSetOutputColumn({
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DataSetOutputColumn.fromMap(Map<String, dynamic> map) {
    return DataSetOutputColumn(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
