// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_datastream_v1alpha1.dart';
import 'oracle_rdbms_datastream_v1alpha1.dart';

/// Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.
class BackfillAllStrategyDatastreamV1alpha1 {
  /// MySQL data source objects to avoid backfilling.
  final MysqlRdbmsDatastreamV1alpha1? mysqlExcludedObjects;

  /// Oracle data source objects to avoid backfilling.
  final OracleRdbmsDatastreamV1alpha1? oracleExcludedObjects;

  /// Creates a new [BackfillAllStrategyDatastreamV1alpha1].
  /// [mysqlExcludedObjects] MySQL data source objects to avoid backfilling.
  /// [oracleExcludedObjects] Oracle data source objects to avoid backfilling.
  BackfillAllStrategyDatastreamV1alpha1({
    this.mysqlExcludedObjects,
    this.oracleExcludedObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlExcludedObjects': ?mysqlExcludedObjects == null
          ? null
          : mysqlExcludedObjects!.toMap(),
      'oracleExcludedObjects': ?oracleExcludedObjects == null
          ? null
          : oracleExcludedObjects!.toMap(),
    };
  }

  factory BackfillAllStrategyDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackfillAllStrategyDatastreamV1alpha1(
      mysqlExcludedObjects: map['mysqlExcludedObjects'] == null
          ? null
          : MysqlRdbmsDatastreamV1alpha1.fromMap(
              (map['mysqlExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
      oracleExcludedObjects: map['oracleExcludedObjects'] == null
          ? null
          : OracleRdbmsDatastreamV1alpha1.fromMap(
              (map['oracleExcludedObjects'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
