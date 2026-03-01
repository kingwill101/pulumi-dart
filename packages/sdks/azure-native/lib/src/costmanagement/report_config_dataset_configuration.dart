// ignore_for_file: unused_element, unnecessary_cast


/// The configuration of dataset in the report.
class ReportConfigDatasetConfiguration {
  /// Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  final List<String>? columns;

  /// Creates a new [ReportConfigDatasetConfiguration].
  /// [columns] Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  ReportConfigDatasetConfiguration({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ReportConfigDatasetConfiguration.fromMap(Map<String, dynamic> map) {
    return ReportConfigDatasetConfiguration(
      columns: map['columns'] == null ? null : (map['columns'] as List).cast<String>(),
    );
  }
}

