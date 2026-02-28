// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_response.dart';
import 'oracle_rdbms_response.dart';
import 'postgresql_rdbms_response.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyResponse {
  /// MySQL data source objects to avoid backfilling.
  final MysqlRdbmsResponse mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final OracleRdbmsResponse oracleExcludedObjects;

  /// PostgreSQL data source objects to avoid backfilling.
  final PostgresqlRdbmsResponse postgresqlExcludedObjects;

  /// Creates a new [BackfillAllStrategyResponse].
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] Oracle data source objects to avoid backfilling.
  /// [postgresqlExcludedObjects] PostgreSQL data source objects to avoid backfilling.
  BackfillAllStrategyResponse({
    required this.mysqlExcludedObjects,
    required this.oracleExcludedObjects,
    required this.postgresqlExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlExcludedObjects'] = mysqlExcludedObjects.toMap();
    map['oracleExcludedObjects'] = oracleExcludedObjects.toMap();
    map['postgresqlExcludedObjects'] = postgresqlExcludedObjects.toMap();
    return map;
  }

  factory BackfillAllStrategyResponse.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategyResponse(
      mysqlExcludedObjects: MysqlRdbmsResponse.fromMap(
          (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>()),
      oracleExcludedObjects: OracleRdbmsResponse.fromMap(
          (map['oracleExcludedObjects'] as Map).cast<String, dynamic>()),
      postgresqlExcludedObjects: PostgresqlRdbmsResponse.fromMap(
          (map['postgresqlExcludedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}
