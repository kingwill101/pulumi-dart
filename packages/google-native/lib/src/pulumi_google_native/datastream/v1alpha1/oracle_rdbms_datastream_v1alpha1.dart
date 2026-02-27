// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_schema_datastream_v1alpha1.dart';

/// Oracle database structure.
class OracleRdbmsDatastreamV1alpha1 {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchemaDatastreamV1alpha1>? oracleSchemas;

  OracleRdbmsDatastreamV1alpha1({
    this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oracleSchemasValue = oracleSchemas;
    if (oracleSchemasValue != null) {
      map['oracleSchemas'] = pulumi.Input.encodeList<
          OracleSchemaDatastreamV1alpha1,
          Map<String, dynamic>>(oracleSchemasValue, (value) => value.toMap());
    }
    return map;
  }

  factory OracleRdbmsDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleRdbmsDatastreamV1alpha1(
      oracleSchemas: map['oracleSchemas'] == null
          ? null
          : pulumi.Input.decodeList<OracleSchemaDatastreamV1alpha1>(
              map['oracleSchemas'],
              (value) => OracleSchemaDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
