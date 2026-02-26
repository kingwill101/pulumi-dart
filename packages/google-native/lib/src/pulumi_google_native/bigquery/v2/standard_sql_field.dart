// ignore_for_file: unused_element, unnecessary_cast

import 'standard_sql_data_type.dart';

/// A field or a column.
class StandardSqlField {
  /// Optional. The name of this field. Can be absent for struct fields.
  final String? name;

  /// Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this "type" field).
  final StandardSqlDataType? type;

  StandardSqlField({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.toMap();
    }
    return map;
  }

  factory StandardSqlField.fromMap(Map<String, dynamic> map) {
    return StandardSqlField(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null
          ? null
          : StandardSqlDataType.fromMap(
              (map['type'] as Map).cast<String, dynamic>()),
    );
  }
}
