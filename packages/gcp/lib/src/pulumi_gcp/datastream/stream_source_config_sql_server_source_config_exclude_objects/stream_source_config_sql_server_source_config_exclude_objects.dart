// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_sql_server_source_config_exclude_objects_schema/stream_source_config_sql_server_source_config_exclude_objects_schema.dart';

class StreamSourceConfigSqlServerSourceConfigExcludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema>
      schemas;

  StreamSourceConfigSqlServerSourceConfigExcludeObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = Input.encodeList<
        StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjects(
      schemas: Input.decodeList<
              StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema>(
          map['schemas'],
          (value) => StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
