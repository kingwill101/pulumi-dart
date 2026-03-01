// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of dataset in the report.
class ReportDatasetConfiguration {
  /// Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  final List<String>? columns;

  /// Creates a new [ReportDatasetConfiguration].
  /// [columns] Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  ReportDatasetConfiguration({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ReportDatasetConfiguration.fromMap(Map<String, dynamic> map) {
    return ReportDatasetConfiguration(
      columns: map['columns'] == null ? null : (map['columns'] as List).cast<String>(),
    );
  }
}

