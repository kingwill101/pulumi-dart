// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryLastRunSummaryExecutionStat {
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

  ScheduledQueryLastRunSummaryExecutionStat({
    this.bytesMetered,
    this.cumulativeBytesScanned,
    this.dataWrites,
    this.executionTimeInMillis,
    this.queryResultRows,
    this.recordsIngested,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bytesMeteredValue = bytesMetered;
    if (bytesMeteredValue != null) {
      map['bytesMetered'] = bytesMeteredValue;
    }
    final cumulativeBytesScannedValue = cumulativeBytesScanned;
    if (cumulativeBytesScannedValue != null) {
      map['cumulativeBytesScanned'] = cumulativeBytesScannedValue;
    }
    final dataWritesValue = dataWrites;
    if (dataWritesValue != null) {
      map['dataWrites'] = dataWritesValue;
    }
    final executionTimeInMillisValue = executionTimeInMillis;
    if (executionTimeInMillisValue != null) {
      map['executionTimeInMillis'] = executionTimeInMillisValue;
    }
    final queryResultRowsValue = queryResultRows;
    if (queryResultRowsValue != null) {
      map['queryResultRows'] = queryResultRowsValue;
    }
    final recordsIngestedValue = recordsIngested;
    if (recordsIngestedValue != null) {
      map['recordsIngested'] = recordsIngestedValue;
    }
    return map;
  }

  factory ScheduledQueryLastRunSummaryExecutionStat.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryLastRunSummaryExecutionStat(
      bytesMetered:
          map['bytesMetered'] == null ? null : map['bytesMetered'] as int,
      cumulativeBytesScanned: map['cumulativeBytesScanned'] == null
          ? null
          : map['cumulativeBytesScanned'] as int,
      dataWrites: map['dataWrites'] == null ? null : map['dataWrites'] as int,
      executionTimeInMillis: map['executionTimeInMillis'] == null
          ? null
          : map['executionTimeInMillis'] as int,
      queryResultRows:
          map['queryResultRows'] == null ? null : map['queryResultRows'] as int,
      recordsIngested:
          map['recordsIngested'] == null ? null : map['recordsIngested'] as int,
    );
  }
}
