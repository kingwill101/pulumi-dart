// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_schema_response_datastream_v1alpha1.dart';

/// Oracle database structure.
class OracleRdbmsResponseDatastreamV1alpha1 {
  /// Oracle schemas/databases in the database server.
  final List<OracleSchemaResponseDatastreamV1alpha1> oracleSchemas;

  OracleRdbmsResponseDatastreamV1alpha1({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] = pulumi.Input.encodeList<
        OracleSchemaResponseDatastreamV1alpha1,
        Map<String, dynamic>>(oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory OracleRdbmsResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return OracleRdbmsResponseDatastreamV1alpha1(
      oracleSchemas:
          pulumi.Input.decodeList<OracleSchemaResponseDatastreamV1alpha1>(
              map['oracleSchemas'],
              (value) => OracleSchemaResponseDatastreamV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
