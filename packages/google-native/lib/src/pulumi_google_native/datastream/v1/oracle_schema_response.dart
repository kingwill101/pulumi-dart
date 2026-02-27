// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table_response.dart';

/// Oracle schema.
class OracleSchemaResponse {
  /// Tables in the schema.
  final List<OracleTableResponse> oracleTables;

  /// Schema name.
  final String schema;

  OracleSchemaResponse({
    required this.oracleTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleTables'] =
        pulumi.Input.encodeList<OracleTableResponse, Map<String, dynamic>>(
            oracleTables, (value) => value.toMap());
    map['schema'] = schema;
    return map;
  }

  factory OracleSchemaResponse.fromMap(Map<String, dynamic> map) {
    return OracleSchemaResponse(
      oracleTables: pulumi.Input.decodeList<OracleTableResponse>(
          map['oracleTables'],
          (value) => OracleTableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
