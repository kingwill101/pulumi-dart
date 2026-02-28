// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_schema.dart';

/// Oracle database structure.
class OracleRdbms {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchema>? oracleSchemas;

  /// Creates a new [OracleRdbms].
  /// [oracleSchemas] Oracle schemas/databases in the database server.
  OracleRdbms({
    this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleSchemas': ?oracleSchemas == null ? null : pulumi.Input.encodeList<OracleSchema, Map<String, dynamic>>(oracleSchemas!, (value) => value.toMap()),
    };
  }

  factory OracleRdbms.fromMap(Map<String, dynamic> map) {
    return OracleRdbms(
      oracleSchemas: map['oracleSchemas'] == null ? null : pulumi.Input.decodeList<OracleSchema>(map['oracleSchemas'], (value) => OracleSchema.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

