// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'oracle_schema2.dart';

/// Oracle database structure.
class OracleRdbms2 {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchema2>? oracleSchemas;

  OracleRdbms2({
    this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleSchemasValue = oracleSchemas;
    if (oracleSchemasValue != null) {
      map['oracleSchemas'] =
          Input.encodeList<OracleSchema2, Map<String, dynamic>>(
              oracleSchemasValue, (value) => value.toMap());
    }
    return map;
  }

  factory OracleRdbms2.fromMap(Map<String, dynamic> map) {
    return OracleRdbms2(
      oracleSchemas: map['oracleSchemas'] == null
          ? null
          : Input.decodeList<OracleSchema2>(
              map['oracleSchemas'],
              (value) => OracleSchema2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
