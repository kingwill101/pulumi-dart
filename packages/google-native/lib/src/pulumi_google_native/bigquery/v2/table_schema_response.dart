// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'table_field_schema_response.dart';

class TableSchemaResponse {
  /// Describes the fields in a table.
  final List<TableFieldSchemaResponse> fields;

  TableSchemaResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] =
        Input.encodeList<TableFieldSchemaResponse, Map<String, dynamic>>(
            fields, (value) => value.toMap());
    return map;
  }

  factory TableSchemaResponse.fromMap(Map<String, dynamic> map) {
    return TableSchemaResponse(
      fields: Input.decodeList<TableFieldSchemaResponse>(
          map['fields'],
          (value) => TableFieldSchemaResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
