// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'standard_sql_field_response.dart';

/// The representation of a SQL STRUCT type.
class StandardSqlStructTypeResponse {
  /// Fields within the struct.
  final List<StandardSqlFieldResponse> fields;

  StandardSqlStructTypeResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] =
        Input.encodeList<StandardSqlFieldResponse, Map<String, dynamic>>(
            fields, (value) => value.toMap());
    return map;
  }

  factory StandardSqlStructTypeResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlStructTypeResponse(
      fields: Input.decodeList<StandardSqlFieldResponse>(
          map['fields'],
          (value) => StandardSqlFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
