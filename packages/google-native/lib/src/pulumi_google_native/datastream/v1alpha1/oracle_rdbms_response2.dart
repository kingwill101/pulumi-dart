// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'oracle_schema_response2.dart';

/// Oracle database structure.
class OracleRdbmsResponse2 {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchemaResponse2> oracleSchemas;

  OracleRdbmsResponse2({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] =
        Input.encodeList<OracleSchemaResponse2, Map<String, dynamic>>(
            oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory OracleRdbmsResponse2.fromMap(Map<String, dynamic> map) {
    return OracleRdbmsResponse2(
      oracleSchemas: Input.decodeList<OracleSchemaResponse2>(
          map['oracleSchemas'],
          (value) => OracleSchemaResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
