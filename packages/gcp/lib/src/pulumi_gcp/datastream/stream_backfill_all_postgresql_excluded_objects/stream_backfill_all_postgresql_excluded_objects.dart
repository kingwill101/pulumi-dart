// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all_postgresql_excluded_objects_postgresql_schema/stream_backfill_all_postgresql_excluded_objects_postgresql_schema.dart';

class StreamBackfillAllPostgresqlExcludedObjects {
  /// PostgreSQL schemas on the server
  /// Structure is documented below.
  final List<StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema>
      postgresqlSchemas;

  StreamBackfillAllPostgresqlExcludedObjects({
    required this.postgresqlSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postgresqlSchemas'] = Input.encodeList<
        StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema,
        Map<String, dynamic>>(postgresqlSchemas, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllPostgresqlExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllPostgresqlExcludedObjects(
      postgresqlSchemas: Input.decodeList<
              StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema>(
          map['postgresqlSchemas'],
          (value) => StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
