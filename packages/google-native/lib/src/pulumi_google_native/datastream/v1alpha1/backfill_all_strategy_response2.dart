// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_response2.dart';
import 'oracle_rdbms_response2.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyResponse2 {
  /// MySQL data source objects to avoid backfilling.
  final MysqlRdbmsResponse2 mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final OracleRdbmsResponse2 oracleExcludedObjects;

  BackfillAllStrategyResponse2({
    required this.mysqlExcludedObjects,
    required this.oracleExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlExcludedObjects'] = mysqlExcludedObjects.toMap();
    map['oracleExcludedObjects'] = oracleExcludedObjects.toMap();
    return map;
  }

  factory BackfillAllStrategyResponse2.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategyResponse2(
      mysqlExcludedObjects: MysqlRdbmsResponse2.fromMap(
          (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>()),
      oracleExcludedObjects: OracleRdbmsResponse2.fromMap(
          (map['oracleExcludedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}
