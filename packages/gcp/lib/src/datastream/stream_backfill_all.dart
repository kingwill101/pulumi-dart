// ignore_for_file: unused_element, unnecessary_cast

import 'stream_backfill_all_mongodb_excluded_objects.dart';
import 'stream_backfill_all_mysql_excluded_objects.dart';
import 'stream_backfill_all_oracle_excluded_objects.dart';
import 'stream_backfill_all_postgresql_excluded_objects.dart';
import 'stream_backfill_all_salesforce_excluded_objects.dart';
import 'stream_backfill_all_spanner_excluded_objects.dart';
import 'stream_backfill_all_sql_server_excluded_objects.dart';

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

  /// Creates a new [StreamBackfillAll].
  /// [mongodbExcludedObjects] MongoDB data source objects to avoid backfilling.
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  /// [postgresqlExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  /// [salesforceExcludedObjects] Salesforce objects to avoid backfilling.
  /// [spannerExcludedObjects] Spanner objects to avoid backfilling.
  /// [sqlServerExcludedObjects] SQL Server data source objects to avoid backfilling.
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
    return <String, dynamic>{
      'mongodbExcludedObjects': ?mongodbExcludedObjects == null
          ? null
          : mongodbExcludedObjects!.toMap(),
      'mysqlExcludedObjects': ?mysqlExcludedObjects == null
          ? null
          : mysqlExcludedObjects!.toMap(),
      'oracleExcludedObjects': ?oracleExcludedObjects == null
          ? null
          : oracleExcludedObjects!.toMap(),
      'postgresqlExcludedObjects': ?postgresqlExcludedObjects == null
          ? null
          : postgresqlExcludedObjects!.toMap(),
      'salesforceExcludedObjects': ?salesforceExcludedObjects == null
          ? null
          : salesforceExcludedObjects!.toMap(),
      'spannerExcludedObjects': ?spannerExcludedObjects == null
          ? null
          : spannerExcludedObjects!.toMap(),
      'sqlServerExcludedObjects': ?sqlServerExcludedObjects == null
          ? null
          : sqlServerExcludedObjects!.toMap(),
    };
  }

  factory StreamBackfillAll.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAll(
      mongodbExcludedObjects: map['mongodbExcludedObjects'] == null
          ? null
          : StreamBackfillAllMongodbExcludedObjects.fromMap(
              (map['mongodbExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      mysqlExcludedObjects: map['mysqlExcludedObjects'] == null
          ? null
          : StreamBackfillAllMysqlExcludedObjects.fromMap(
              (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      oracleExcludedObjects: map['oracleExcludedObjects'] == null
          ? null
          : StreamBackfillAllOracleExcludedObjects.fromMap(
              (map['oracleExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      postgresqlExcludedObjects: map['postgresqlExcludedObjects'] == null
          ? null
          : StreamBackfillAllPostgresqlExcludedObjects.fromMap(
              (map['postgresqlExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      salesforceExcludedObjects: map['salesforceExcludedObjects'] == null
          ? null
          : StreamBackfillAllSalesforceExcludedObjects.fromMap(
              (map['salesforceExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      spannerExcludedObjects: map['spannerExcludedObjects'] == null
          ? null
          : StreamBackfillAllSpannerExcludedObjects.fromMap(
              (map['spannerExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      sqlServerExcludedObjects: map['sqlServerExcludedObjects'] == null
          ? null
          : StreamBackfillAllSqlServerExcludedObjects.fromMap(
              (map['sqlServerExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
