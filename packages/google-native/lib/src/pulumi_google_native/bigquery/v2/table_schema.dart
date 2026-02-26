// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'table_field_schema.dart';

class TableSchema {
  /// Describes the fields in a table.
  final List<TableFieldSchema>? fields;

  TableSchema({
    this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.encodeList<TableFieldSchema, Map<String, dynamic>>(
          fieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableSchema.fromMap(Map<String, dynamic> map) {
    return TableSchema(
      fields: map['fields'] == null
          ? null
          : Input.decodeList<TableFieldSchema>(
              map['fields'],
              (value) => TableFieldSchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
