// ignore_for_file: unused_element, unnecessary_cast

import '../stream_backfill_all_mongodb_excluded_objects/stream_backfill_all_mongodb_excluded_objects.dart';
import '../stream_backfill_all_mysql_excluded_objects/stream_backfill_all_mysql_excluded_objects.dart';
import '../stream_backfill_all_oracle_excluded_objects/stream_backfill_all_oracle_excluded_objects.dart';
import '../stream_backfill_all_postgresql_excluded_objects/stream_backfill_all_postgresql_excluded_objects.dart';
import '../stream_backfill_all_salesforce_excluded_objects/stream_backfill_all_salesforce_excluded_objects.dart';
import '../stream_backfill_all_spanner_excluded_objects/stream_backfill_all_spanner_excluded_objects.dart';
import '../stream_backfill_all_sql_server_excluded_objects/stream_backfill_all_sql_server_excluded_objects.dart';

class StreamBackfillAll {
  /// MongoDB data source objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllMongodbExcludedObjects? mongodbExcludedObjects;

  /// MySQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllMysqlExcludedObjects? mysqlExcludedObjects;

  /// PostgreSQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllOracleExcludedObjects? oracleExcludedObjects;

  /// PostgreSQL data source objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllPostgresqlExcludedObjects? postgresqlExcludedObjects;

  /// Salesforce objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllSalesforceExcludedObjects? salesforceExcludedObjects;

  /// Spanner objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllSpannerExcludedObjects? spannerExcludedObjects;

  /// SQL Server data source objects to avoid backfilling.
  /// Structure is documented below.
  final StreamBackfillAllSqlServerExcludedObjects? sqlServerExcludedObjects;

  StreamBackfillAll({
    this.mongodbExcludedObjects,
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
    this.postgresqlExcludedObjects,
    this.salesforceExcludedObjects,
    this.spannerExcludedObjects,
    this.sqlServerExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mongodbExcludedObjectsValue = mongodbExcludedObjects;
    if (mongodbExcludedObjectsValue != null) {
      map['mongodbExcludedObjects'] = mongodbExcludedObjectsValue.toMap();
    }
    final mysqlExcludedObjectsValue = mysqlExcludedObjects;
    if (mysqlExcludedObjectsValue != null) {
      map['mysqlExcludedObjects'] = mysqlExcludedObjectsValue.toMap();
    }
    final oracleExcludedObjectsValue = oracleExcludedObjects;
    if (oracleExcludedObjectsValue != null) {
      map['oracleExcludedObjects'] = oracleExcludedObjectsValue.toMap();
    }
    final postgresqlExcludedObjectsValue = postgresqlExcludedObjects;
    if (postgresqlExcludedObjectsValue != null) {
      map['postgresqlExcludedObjects'] = postgresqlExcludedObjectsValue.toMap();
    }
    final salesforceExcludedObjectsValue = salesforceExcludedObjects;
    if (salesforceExcludedObjectsValue != null) {
      map['salesforceExcludedObjects'] = salesforceExcludedObjectsValue.toMap();
    }
    final spannerExcludedObjectsValue = spannerExcludedObjects;
    if (spannerExcludedObjectsValue != null) {
      map['spannerExcludedObjects'] = spannerExcludedObjectsValue.toMap();
    }
    final sqlServerExcludedObjectsValue = sqlServerExcludedObjects;
    if (sqlServerExcludedObjectsValue != null) {
      map['sqlServerExcludedObjects'] = sqlServerExcludedObjectsValue.toMap();
    }
    return map;
  }

  factory StreamBackfillAll.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAll(
      mongodbExcludedObjects: map['mongodbExcludedObjects'] == null
          ? null
          : StreamBackfillAllMongodbExcludedObjects.fromMap(
              (map['mongodbExcludedObjects'] as Map).cast<String, dynamic>()),
      mysqlExcludedObjects: map['mysqlExcludedObjects'] == null
          ? null
          : StreamBackfillAllMysqlExcludedObjects.fromMap(
              (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>()),
      oracleExcludedObjects: map['oracleExcludedObjects'] == null
          ? null
          : StreamBackfillAllOracleExcludedObjects.fromMap(
              (map['oracleExcludedObjects'] as Map).cast<String, dynamic>()),
      postgresqlExcludedObjects: map['postgresqlExcludedObjects'] == null
          ? null
          : StreamBackfillAllPostgresqlExcludedObjects.fromMap(
              (map['postgresqlExcludedObjects'] as Map)
                  .cast<String, dynamic>()),
      salesforceExcludedObjects: map['salesforceExcludedObjects'] == null
          ? null
          : StreamBackfillAllSalesforceExcludedObjects.fromMap(
              (map['salesforceExcludedObjects'] as Map)
                  .cast<String, dynamic>()),
      spannerExcludedObjects: map['spannerExcludedObjects'] == null
          ? null
          : StreamBackfillAllSpannerExcludedObjects.fromMap(
              (map['spannerExcludedObjects'] as Map).cast<String, dynamic>()),
      sqlServerExcludedObjects: map['sqlServerExcludedObjects'] == null
          ? null
          : StreamBackfillAllSqlServerExcludedObjects.fromMap(
              (map['sqlServerExcludedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}
