// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_field.dart';

/// The representation of a SQL STRUCT type.
class StandardSqlStructType {
  /// Fields within the struct.
  final List<StandardSqlField>? fields;

  StandardSqlStructType({
    this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] =
          pulumi.Input.encodeList<StandardSqlField, Map<String, dynamic>>(
              fieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StandardSqlStructType.fromMap(Map<String, dynamic> map) {
    return StandardSqlStructType(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<StandardSqlField>(
              map['fields'],
              (value) => StandardSqlField.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
