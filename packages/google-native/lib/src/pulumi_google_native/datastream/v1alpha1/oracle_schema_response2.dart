// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'oracle_table_response2.dart';

/// Oracle schema.
class OracleSchemaResponse2 {
  /// Tables in the schema.
  final List<OracleTableResponse2> oracleTables;

  /// Schema name.
  final String schemaName;

  OracleSchemaResponse2({
    required this.oracleTables,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleTables'] =
        Input.encodeList<OracleTableResponse2, Map<String, dynamic>>(
            oracleTables, (value) => value.toMap());
    map['schemaName'] = schemaName;
    return map;
  }

  factory OracleSchemaResponse2.fromMap(Map<String, dynamic> map) {
    return OracleSchemaResponse2(
      oracleTables: Input.decodeList<OracleTableResponse2>(
          map['oracleTables'],
          (value) => OracleTableResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      schemaName: map['schemaName'] as String,
    );
  }
}
