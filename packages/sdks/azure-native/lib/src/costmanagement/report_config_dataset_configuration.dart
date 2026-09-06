// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of dataset in the report.
class ReportConfigDatasetConfiguration {
  /// Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  final pulumi.Input<List<String>?>? columns;

  /// Creates a new [ReportConfigDatasetConfiguration].
  /// [columns] Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  const ReportConfigDatasetConfiguration({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ReportConfigDatasetConfiguration.fromMap(Map<String, dynamic> map) {
    return ReportConfigDatasetConfiguration(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
