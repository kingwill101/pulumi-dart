// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table.dart';

/// Oracle schema.
class OracleSchema {
  /// Tables in the schema.
  final List<OracleTable>? oracleTables;

  /// Schema name.
  final String? schema;

  /// Creates a new [OracleSchema].
  /// [oracleTables] Tables in the schema.
  /// [schema] Schema name.
  OracleSchema({this.oracleTables, this.schema});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables': ?oracleTables == null
          ? null
          : pulumi.Input.encodeList<OracleTable, Map<String, dynamic>>(
              oracleTables!,
              (value) => value.toMap(),
            ),
      'schema': ?schema,
    };
  }

  factory OracleSchema.fromMap(Map<String, dynamic> map) {
    return OracleSchema(
      oracleTables: map['oracleTables'] == null
          ? null
          : pulumi.Input.decodeList<OracleTable>(
              map['oracleTables'],
              (value) =>
                  OracleTable.fromMap((value as Map).cast<String, dynamic>()),
            ),
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}
