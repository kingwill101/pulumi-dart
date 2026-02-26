// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'standard_sql_field.dart';

/// A table type
class StandardSqlTableType {
  /// The columns in this table type
  final List<StandardSqlField>? columns;

  StandardSqlTableType({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<StandardSqlField, Map<String, dynamic>>(
          columnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StandardSqlTableType.fromMap(Map<String, dynamic> map) {
    return StandardSqlTableType(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<StandardSqlField>(
              map['columns'],
              (value) => StandardSqlField.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
