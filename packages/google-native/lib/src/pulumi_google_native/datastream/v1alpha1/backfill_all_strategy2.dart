// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms2.dart';
import 'oracle_rdbms2.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategy2 {
  /// MySQL data source objects to avoid backfilling.
  final MysqlRdbms2? mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final OracleRdbms2? oracleExcludedObjects;

  BackfillAllStrategy2({
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
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
    return map;
  }

  factory BackfillAllStrategy2.fromMap(Map<String, dynamic> map) {
    return BackfillAllStrategy2(
      mysqlExcludedObjects: map['mysqlExcludedObjects'] == null
          ? null
          : MysqlRdbms2.fromMap(
              (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>()),
      oracleExcludedObjects: map['oracleExcludedObjects'] == null
          ? null
          : OracleRdbms2.fromMap(
              (map['oracleExcludedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}
