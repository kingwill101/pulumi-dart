// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms.dart';
import 'oracle_rdbms.dart';
import 'postgresql_rdbms.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategy {
  /// MySQL data source objects to avoid backfilling.
  final MysqlRdbms? mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final OracleRdbms? oracleExcludedObjects;

  /// PostgreSQL data source objects to avoid backfilling.
  final PostgresqlRdbms? postgresqlExcludedObjects;

  BackfillAllStrategy({
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
    this.postgresqlExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    return map;
  }

  factory BackfillAllStrategy.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategy(
      mysqlExcludedObjects: map['mysqlExcludedObjects'] == null
          ? null
          : MysqlRdbms.fromMap(
              (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>()),
      oracleExcludedObjects: map['oracleExcludedObjects'] == null
          ? null
          : OracleRdbms.fromMap(
              (map['oracleExcludedObjects'] as Map).cast<String, dynamic>()),
      postgresqlExcludedObjects: map['postgresqlExcludedObjects'] == null
          ? null
          : PostgresqlRdbms.fromMap((map['postgresqlExcludedObjects'] as Map)
              .cast<String, dynamic>()),
    );
  }
}
