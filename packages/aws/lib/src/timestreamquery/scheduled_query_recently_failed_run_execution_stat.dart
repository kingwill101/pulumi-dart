// ignore_for_file: unused_element, unnecessary_cast


class ScheduledQueryRecentlyFailedRunExecutionStat {
  /// Bytes metered for a single scheduled query run.
  final int? bytesMetered;
  /// Bytes scanned for a single scheduled query run.
  final int? cumulativeBytesScanned;
  /// Data writes metered for records ingested in a single scheduled query run.
  final int? dataWrites;
  /// Total time, measured in milliseconds, that was needed for the scheduled query run to complete.
  final int? executionTimeInMillis;
  /// Number of rows present in the output from running a query before ingestion to destination data source.
  final int? queryResultRows;
  /// Number of records ingested for a single scheduled query run.
  final int? recordsIngested;

  /// Creates a new [ScheduledQueryRecentlyFailedRunExecutionStat].
  /// [bytesMetered] Bytes metered for a single scheduled query run.
  /// [cumulativeBytesScanned] Bytes scanned for a single scheduled query run.
  /// [dataWrites] Data writes metered for records ingested in a single scheduled query run.
  /// [executionTimeInMillis] Total time, measured in milliseconds, that was needed for the scheduled query run to complete.
  /// [queryResultRows] Number of rows present in the output from running a query before ingestion to destination data source.
  /// [recordsIngested] Number of records ingested for a single scheduled query run.
  ScheduledQueryRecentlyFailedRunExecutionStat({
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
      bytesMetered: map['bytesMetered'] == null ? null : map['bytesMetered'] as int,
      cumulativeBytesScanned: map['cumulativeBytesScanned'] == null ? null : map['cumulativeBytesScanned'] as int,
      dataWrites: map['dataWrites'] == null ? null : map['dataWrites'] as int,
      executionTimeInMillis: map['executionTimeInMillis'] == null ? null : map['executionTimeInMillis'] as int,
      queryResultRows: map['queryResultRows'] == null ? null : map['queryResultRows'] as int,
      recordsIngested: map['recordsIngested'] == null ? null : map['recordsIngested'] as int,
    );
  }
}

