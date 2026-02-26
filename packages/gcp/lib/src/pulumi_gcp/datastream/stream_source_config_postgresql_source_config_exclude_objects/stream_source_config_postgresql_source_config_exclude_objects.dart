// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema/stream_source_config_postgresql_source_config_exclude_objects_postgresql_schema.dart';

class StreamSourceConfigPostgresqlSourceConfigExcludeObjects {
  /// PostgreSQL schemas on the server
  /// Structure is documented below.
  final List<
          StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema>
      postgresqlSchemas;

  StreamSourceConfigPostgresqlSourceConfigExcludeObjects({
    required this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postgresqlSchemas'] = Input.encodeList<
        StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema,
        Map<String, dynamic>>(postgresqlSchemas, (value) => value.toMap());
    return map;
  }

  factory StreamSourceConfigPostgresqlSourceConfigExcludeObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigExcludeObjects(
      postgresqlSchemas: Input.decodeList<
              StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema>(
          map['postgresqlSchemas'],
          (value) =>
              StreamSourceConfigPostgresqlSourceConfigExcludeObjectsPostgresqlSchema
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
