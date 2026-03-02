// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryLastRunSummaryExecutionStat {
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

  /// Creates a new [ScheduledQueryLastRunSummaryExecutionStat].
  /// [bytesMetered] Bytes metered for a single scheduled query run.
  /// [cumulativeBytesScanned] Bytes scanned for a single scheduled query run.
  /// [dataWrites] Data writes metered for records ingested in a single scheduled query run.
  /// [executionTimeInMillis] Total time, measured in milliseconds, that was needed for the scheduled query run to complete.
  /// [queryResultRows] Number of rows present in the output from running a query before ingestion to destination data source.
  /// [recordsIngested] Number of records ingested for a single scheduled query run.
  ScheduledQueryLastRunSummaryExecutionStat({
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

  factory ScheduledQueryLastRunSummaryExecutionStat.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryExecutionStat(
      bytesMetered: map['bytesMetered'] == null ? null : ((map['bytesMetered'] as int).input()).input(),
      cumulativeBytesScanned: map['cumulativeBytesScanned'] == null ? null : ((map['cumulativeBytesScanned'] as int).input()).input(),
      dataWrites: map['dataWrites'] == null ? null : ((map['dataWrites'] as int).input()).input(),
      executionTimeInMillis: map['executionTimeInMillis'] == null ? null : ((map['executionTimeInMillis'] as int).input()).input(),
      queryResultRows: map['queryResultRows'] == null ? null : ((map['queryResultRows'] as int).input()).input(),
      recordsIngested: map['recordsIngested'] == null ? null : ((map['recordsIngested'] as int).input()).input(),
    );
  }
}

