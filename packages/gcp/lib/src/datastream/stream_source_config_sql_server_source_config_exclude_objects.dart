// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_exclude_objects_schema.dart';

class StreamSourceConfigSqlServerSourceConfigExcludeObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema>
  schemas;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigExcludeObjects].
  /// [schemas] Spanner schemas in the database
  StreamSourceConfigSqlServerSourceConfigExcludeObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemas':
          pulumi.Input.encodeList<
            StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema,
            Map<String, dynamic>
          >(schemas, (value) => value.toMap()),
    };
  }

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjects.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjects(
      schemas:
          pulumi.Input.decodeList<
            StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema
          >(
            map['schemas'],
            (value) =>
                StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchema.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
