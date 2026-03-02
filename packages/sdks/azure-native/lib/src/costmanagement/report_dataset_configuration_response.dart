// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of dataset in the report.
class ReportDatasetConfigurationResponse {
  /// Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  final pulumi.Input<List<String>>? columns;

  /// Creates a new [ReportDatasetConfigurationResponse].
  /// [columns] Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  ReportDatasetConfigurationResponse({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ReportDatasetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ReportDatasetConfigurationResponse(
      columns: map['columns'] == null ? null : ((map['columns']! as List).cast<String>()).input(),
    );
  }
}

