// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'oracle_schema.dart';

/// Oracle database structure.
class OracleRdbms {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchema>? oracleSchemas;

  OracleRdbms({
    this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleSchemasValue = oracleSchemas;
    if (oracleSchemasValue != null) {
      map['oracleSchemas'] =
          Input.encodeList<OracleSchema, Map<String, dynamic>>(
              oracleSchemasValue, (value) => value.toMap());
    }
    return map;
  }

  factory OracleRdbms.fromMap(Map<String, dynamic> map) {
    return OracleRdbms(
      oracleSchemas: map['oracleSchemas'] == null
          ? null
          : Input.decodeList<OracleSchema>(
              map['oracleSchemas'],
              (value) =>
                  OracleSchema.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
