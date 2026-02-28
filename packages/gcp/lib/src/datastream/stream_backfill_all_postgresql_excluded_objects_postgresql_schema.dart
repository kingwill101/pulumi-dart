// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_postgresql_excluded_objects_postgresql_schema_postgresql_table.dart';

class StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema {
  /// Tables in the schema.
  /// Structure is documented below.
  final List<
          StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable>?
      postgresqlTables;

  /// Database name.
  final String schema;

  /// Creates a new [StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema].
  /// [postgresqlTables] Tables in the schema.
  /// [schema] Database name.
  StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema({
    this.postgresqlTables,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postgresqlTablesValue = postgresqlTables;
    if (postgresqlTablesValue != null) {
      map['postgresqlTables'] = pulumi.Input.encodeList<
          StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable,
          Map<String,
              dynamic>>(postgresqlTablesValue, (value) => value.toMap());
    }
    map['schema'] = schema;
    return map;
  }

  factory StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchema(
      postgresqlTables: map['postgresqlTables'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable>(
              map['postgresqlTables'],
              (value) =>
                  StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTable
                      .fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] as String,
    );
  }
}
