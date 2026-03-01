// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_table_response_datastream_v1alpha1.dart';

/// Oracle schema.
class OracleSchemaResponseDatastreamV1alpha1 {
  /// Tables in the schema.
  final List<OracleTableResponseDatastreamV1alpha1> oracleTables;

  /// Schema name.
  final String schemaName;

  /// Creates a new [OracleSchemaResponseDatastreamV1alpha1].
  /// [oracleTables] Tables in the schema.
  /// [schemaName] Schema name.
  OracleSchemaResponseDatastreamV1alpha1({
    required this.oracleTables,
    required this.schemaName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oracleTables':
          pulumi.Input.encodeList<
            OracleTableResponseDatastreamV1alpha1,
            Map<String, dynamic>
          >(oracleTables, (value) => value.toMap()),
      'schemaName': schemaName,
    };
  }

  factory OracleSchemaResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return OracleSchemaResponseDatastreamV1alpha1(
      oracleTables:
          pulumi.Input.decodeList<OracleTableResponseDatastreamV1alpha1>(
            map['oracleTables'],
            (value) => OracleTableResponseDatastreamV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      schemaName: map['schemaName'] as String,
    );
  }
}
