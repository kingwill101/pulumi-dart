// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_include_objects_schema.dart';

class StreamSourceConfigSqlServerSourceConfigIncludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema>
      schemas;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigIncludeObjects].
  /// [schemas] Spanner schemas in the database
  StreamSourceConfigSqlServerSourceConfigIncludeObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = pulumi.Input.encodeList<
        StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigSqlServerSourceConfigIncludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigIncludeObjects(
      schemas: pulumi.Input.decodeList<
              StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema>(
          map['schemas'],
          (value) => StreamSourceConfigSqlServerSourceConfigIncludeObjectsSchema
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
