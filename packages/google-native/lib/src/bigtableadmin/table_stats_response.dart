// ignore_for_file: unused_element, unnecessary_cast

/// Approximate statistics related to a table. These statistics are calculated infrequently, while simultaneously, data in the table can change rapidly. Thus the values reported here (e.g. row count) are very likely out-of date, even the instant they are received in this API. Thus, only treat these values as approximate. IMPORTANT: Everything below is approximate, unless otherwise specified.
class TableStatsResponse {
  /// How many cells are present per column (column family, column qualifier) combinations, averaged over all columns in all rows in the table. e.g. A table with 2 rows: * A row with 3 cells in "family:col" and 1 cell in "other:col" (4 cells / 2 columns) * A row with 1 cell in "family:col", 7 cells in "family:other_col", and 7 cells in "other:data" (15 cells / 3 columns) would report (4 + 15)/(2 + 3) = 3.8 in this field.
  final double averageCellsPerColumn;

  /// How many (column family, column qualifier) combinations are present per row in the table, averaged over all rows in the table. e.g. A table with 2 rows: * A row with cells in "family:col" and "other:col" (2 distinct columns) * A row with cells in "family:col", "family:other_col", and "other:data" (3 distinct columns) would report (2 + 3)/2 = 2.5 in this field.
  final double averageColumnsPerRow;

  /// This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all contents out).
  final String logicalDataBytes;

  /// How many rows are in the table.
  final String rowCount;

  /// Creates a new [TableStatsResponse].
  /// [averageCellsPerColumn] How many cells are present per column (column family, column qualifier) combinations, averaged over all columns in all rows in the table. e.g. A table with 2 rows: * A row with 3 cells in "family:col" and 1 cell in "other:col" (4 cells / 2 columns) * A row with 1 cell in "family:col", 7 cells in "family:other_col", and 7 cells in "other:data" (15 cells / 3 columns) would report (4 + 15)/(2 + 3) = 3.8 in this field.
  /// [averageColumnsPerRow] How many (column family, column qualifier) combinations are present per row in the table, averaged over all rows in the table. e.g. A table with 2 rows: * A row with cells in "family:col" and "other:col" (2 distinct columns) * A row with cells in "family:col", "family:other_col", and "other:data" (3 distinct columns) would report (2 + 3)/2 = 2.5 in this field.
  /// [logicalDataBytes] This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all contents out).
  /// [rowCount] How many rows are in the table.
  TableStatsResponse({
    required this.averageCellsPerColumn,
    required this.averageColumnsPerRow,
    required this.logicalDataBytes,
    required this.rowCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageCellsPerColumn': averageCellsPerColumn,
      'averageColumnsPerRow': averageColumnsPerRow,
      'logicalDataBytes': logicalDataBytes,
      'rowCount': rowCount,
    };
  }

  factory TableStatsResponse.fromMap(Map<String, dynamic> map) {
    return TableStatsResponse(
      averageCellsPerColumn: map['averageCellsPerColumn'] as double,
      averageColumnsPerRow: map['averageColumnsPerRow'] as double,
      logicalDataBytes: map['logicalDataBytes'] as String,
      rowCount: map['rowCount'] as String,
    );
  }
}
