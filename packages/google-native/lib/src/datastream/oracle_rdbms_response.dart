// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_schema_response.dart';

/// Oracle database structure.
class OracleRdbmsResponse {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchemaResponse> oracleSchemas;

  /// Creates a new [OracleRdbmsResponse].
  /// [oracleSchemas] Oracle schemas/databases in the database server.
  OracleRdbmsResponse({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] =
        pulumi.Input.encodeList<OracleSchemaResponse, Map<String, dynamic>>(
            oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory OracleRdbmsResponse.fromMap(Map<String, dynamic> map) {
    return OracleRdbmsResponse(
      oracleSchemas: pulumi.Input.decodeList<OracleSchemaResponse>(
          map['oracleSchemas'],
          (value) => OracleSchemaResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
