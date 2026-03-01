// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_field.dart';

/// The representation of a SQL STRUCT type.
class StandardSqlStructType {
  /// Fields within the struct.
  final List<StandardSqlField>? fields;

  /// Creates a new [StandardSqlStructType].
  /// [fields] Fields within the struct.
  StandardSqlStructType({this.fields});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields == null
          ? null
          : pulumi.Input.encodeList<StandardSqlField, Map<String, dynamic>>(
              fields!,
              (value) => value.toMap(),
            ),
    };
  }

  factory StandardSqlStructType.fromMap(Map<String, dynamic> map) {
    return StandardSqlStructType(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<StandardSqlField>(
              map['fields'],
              (value) => StandardSqlField.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
