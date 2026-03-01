// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_field.dart';

/// A table type
class StandardSqlTableType {
  /// The columns in this table type
  final List<StandardSqlField>? columns;

  /// Creates a new [StandardSqlTableType].
  /// [columns] The columns in this table type
  StandardSqlTableType({this.columns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null
          ? null
          : pulumi.Input.encodeList<StandardSqlField, Map<String, dynamic>>(
              columns!,
              (value) => value.toMap(),
            ),
    };
  }

  factory StandardSqlTableType.fromMap(Map<String, dynamic> map) {
    return StandardSqlTableType(
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<StandardSqlField>(
              map['columns'],
              (value) => StandardSqlField.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
