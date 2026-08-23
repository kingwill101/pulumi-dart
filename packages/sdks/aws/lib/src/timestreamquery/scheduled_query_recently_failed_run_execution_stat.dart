// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRecentlyFailedRunExecutionStat {
  /// Bytes metered for a single scheduled query run.
  final pulumi.Input<int>? bytesMetered;
  /// Bytes scanned for a single scheduled query run.
  final pulumi.Input<int>? cumulativeBytesScanned;
  /// Data writes metered for records ingested in a single scheduled query run.
  final pulumi.Input<int>? dataWrites;
  /// Total time, measured in milliseconds, that was needed for the scheduled query run to complete.
  final pulumi.Input<int>? executionTimeInMillis;
  /// Number of rows present in the output from running a query before ingestion to destination data source.
  final pulumi.Input<int>? queryResultRows;
  /// Number of records ingested for a single scheduled query run.
  final pulumi.Input<int>? recordsIngested;

  /// Creates a new [ScheduledQueryRecentlyFailedRunExecutionStat].
  /// [bytesMetered] Bytes metered for a single scheduled query run.
  /// [cumulativeBytesScanned] Bytes scanned for a single scheduled query run.
  /// [dataWrites] Data writes metered for records ingested in a single scheduled query run.
  /// [executionTimeInMillis] Total time, measured in milliseconds, that was needed for the scheduled query run to complete.
  /// [queryResultRows] Number of rows present in the output from running a query before ingestion to destination data source.
  /// [recordsIngested] Number of records ingested for a single scheduled query run.
  const ScheduledQueryRecentlyFailedRunExecutionStat({
    this.bytesMetered,
    this.cumulativeBytesScanned,
    this.dataWrites,
    this.executionTimeInMillis,
    this.queryResultRows,
    this.recordsIngested,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesMetered': ?bytesMetered,
      'cumulativeBytesScanned': ?cumulativeBytesScanned,
      'dataWrites': ?dataWrites,
      'executionTimeInMillis': ?executionTimeInMillis,
      'queryResultRows': ?queryResultRows,
      'recordsIngested': ?recordsIngested,
    };
  }

  factory ScheduledQueryRecentlyFailedRunExecutionStat.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRecentlyFailedRunExecutionStat(
      bytesMetered: (() { final guardedValue = map['bytesMetered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cumulativeBytesScanned: (() { final guardedValue = map['cumulativeBytesScanned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataWrites: (() { final guardedValue = map['dataWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      executionTimeInMillis: (() { final guardedValue = map['executionTimeInMillis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      queryResultRows: (() { final guardedValue = map['queryResultRows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      recordsIngested: (() { final guardedValue = map['recordsIngested']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
