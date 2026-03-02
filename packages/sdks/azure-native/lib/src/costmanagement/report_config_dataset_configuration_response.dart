// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of dataset in the report.
class ReportConfigDatasetConfigurationResponse {
  /// Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  final pulumi.Input<List<String>>? columns;

  /// Creates a new [ReportConfigDatasetConfigurationResponse].
  /// [columns] Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns.
  ReportConfigDatasetConfigurationResponse({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ReportConfigDatasetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ReportConfigDatasetConfigurationResponse(
      columns: map['columns'] == null ? null : ((map['columns'] as List).cast<String>()).input(),
    );
  }
}

