// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_oracle_source_config_exclude_objects_oracle_schema/stream_source_config_oracle_source_config_exclude_objects_oracle_schema.dart';

class StreamSourceConfigOracleSourceConfigExcludeObjects {
  /// Oracle schemas/databases in the database server
  /// Structure is documented below.
  final List<StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema>
      oracleSchemas;

  StreamSourceConfigOracleSourceConfigExcludeObjects({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] = Input.encodeList<
        StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema,
        Map<String, dynamic>>(oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigOracleSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigExcludeObjects(
      oracleSchemas: Input.decodeList<
              StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema>(
          map['oracleSchemas'],
          (value) =>
              StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchema
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
