// ignore_for_file: unused_element, unnecessary_cast

import 'standard_sql_data_type_response.dart';

/// A field or a column.
class StandardSqlFieldResponse {
  /// Optional. The name of this field. Can be absent for struct fields.
  final String name;

  /// Optional. The type of this parameter. Absent if not explicitly specified (e.g., CREATE FUNCTION statement can omit the return type; in this case the output parameter does not have this "type" field).
  final StandardSqlDataTypeResponse type;

  StandardSqlFieldResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type.toMap();
    return map;
  }

  factory StandardSqlFieldResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlFieldResponse(
      name: map['name'] as String,
      type: StandardSqlDataTypeResponse.fromMap(
          (map['type'] as Map).cast<String, dynamic>()),
    );
  }
}
