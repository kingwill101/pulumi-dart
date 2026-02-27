// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all_sql_server_excluded_objects_schema/stream_backfill_all_sql_server_excluded_objects_schema.dart';

class StreamBackfillAllSqlServerExcludedObjects {
  /// SQL Server schemas/databases in the database server
  /// Structure is documented below.
  final List<StreamBackfillAllSqlServerExcludedObjectsSchema> schemas;

  StreamBackfillAllSqlServerExcludedObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = pulumi.Input.encodeList<
        StreamBackfillAllSqlServerExcludedObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllSqlServerExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSqlServerExcludedObjects(
      schemas: pulumi.Input.decodeList<
              StreamBackfillAllSqlServerExcludedObjectsSchema>(
          map['schemas'],
          (value) => StreamBackfillAllSqlServerExcludedObjectsSchema.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
