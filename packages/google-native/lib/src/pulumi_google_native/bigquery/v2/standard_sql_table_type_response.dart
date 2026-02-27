// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_field_response.dart';

/// A table type
class StandardSqlTableTypeResponse {
  /// The columns in this table type
  final List<StandardSqlFieldResponse> columns;

  StandardSqlTableTypeResponse({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] =
        pulumi.Input.encodeList<StandardSqlFieldResponse, Map<String, dynamic>>(
            columns, (value) => value.toMap());
    return map;
  }

  factory StandardSqlTableTypeResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlTableTypeResponse(
      columns: pulumi.Input.decodeList<StandardSqlFieldResponse>(
          map['columns'],
          (value) => StandardSqlFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
