// ignore_for_file: unused_element, unnecessary_cast

class DmlStatisticsResponse {
  /// Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements.
  final String deletedRowCount;

  /// Number of inserted Rows. Populated by DML INSERT and MERGE statements.
  final String insertedRowCount;

  /// Number of updated Rows. Populated by DML UPDATE and MERGE statements.
  final String updatedRowCount;

  /// Creates a new [DmlStatisticsResponse].
  /// [deletedRowCount] Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements.
  /// [insertedRowCount] Number of inserted Rows. Populated by DML INSERT and MERGE statements.
  /// [updatedRowCount] Number of updated Rows. Populated by DML UPDATE and MERGE statements.
  DmlStatisticsResponse({
    required this.deletedRowCount,
    required this.insertedRowCount,
    required this.updatedRowCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deletedRowCount'] = deletedRowCount;
    map['insertedRowCount'] = insertedRowCount;
    map['updatedRowCount'] = updatedRowCount;
    return map;
  }

  factory DmlStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return DmlStatisticsResponse(
      deletedRowCount: map['deletedRowCount'] as String,
      insertedRowCount: map['insertedRowCount'] as String,
      updatedRowCount: map['updatedRowCount'] as String,
    );
  }
}
