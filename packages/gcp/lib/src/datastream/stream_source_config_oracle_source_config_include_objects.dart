// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_include_objects_oracle_schema.dart';

class StreamSourceConfigOracleSourceConfigIncludeObjects {
  /// Oracle schemas/databases in the database server
  /// Structure is documented below.
  final List<StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema>
      oracleSchemas;

  /// Creates a new [StreamSourceConfigOracleSourceConfigIncludeObjects].
  /// [oracleSchemas] Oracle schemas/databases in the database server
  StreamSourceConfigOracleSourceConfigIncludeObjects({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] = pulumi.Input.encodeList<
        StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema,
        Map<String, dynamic>>(oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigOracleSourceConfigIncludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigIncludeObjects(
      oracleSchemas: pulumi.Input.decodeList<
              StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema>(
          map['oracleSchemas'],
          (value) =>
              StreamSourceConfigOracleSourceConfigIncludeObjectsOracleSchema
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
