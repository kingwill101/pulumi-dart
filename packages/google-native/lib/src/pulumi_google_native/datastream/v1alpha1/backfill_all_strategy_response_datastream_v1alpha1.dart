// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_response_datastream_v1alpha1.dart';
import 'oracle_rdbms_response_datastream_v1alpha1.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyResponseDatastreamV1alpha1 {
  /// MySQL data source objects to avoid backfilling.
  final MysqlRdbmsResponseDatastreamV1alpha1 mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final OracleRdbmsResponseDatastreamV1alpha1 oracleExcludedObjects;

  BackfillAllStrategyResponseDatastreamV1alpha1({
    required this.mysqlExcludedObjects,
    required this.oracleExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mysqlExcludedObjects'] = mysqlExcludedObjects.toMap();
    map['oracleExcludedObjects'] = oracleExcludedObjects.toMap();
    return map;
  }

  factory BackfillAllStrategyResponseDatastreamV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return BackfillAllStrategyResponseDatastreamV1alpha1(
      mysqlExcludedObjects: MysqlRdbmsResponseDatastreamV1alpha1.fromMap(
          (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>()),
      oracleExcludedObjects: OracleRdbmsResponseDatastreamV1alpha1.fromMap(
          (map['oracleExcludedObjects'] as Map).cast<String, dynamic>()),
    );
  }
}
