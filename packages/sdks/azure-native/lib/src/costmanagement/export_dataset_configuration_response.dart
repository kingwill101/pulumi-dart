// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The export dataset configuration. Allows columns to be selected for the export. If not provided then the export will include all available columns.
class ExportDatasetConfigurationResponse {
  /// Array of column names to be included in the export. If not provided then the export will include all available columns. The available columns can vary by customer channel (see examples).
  final pulumi.Input<List<String>>? columns;

  /// Creates a new [ExportDatasetConfigurationResponse].
  /// [columns] Array of column names to be included in the export. If not provided then the export will include all available columns. The available columns can vary by customer channel (see examples).
  ExportDatasetConfigurationResponse({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ExportDatasetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ExportDatasetConfigurationResponse(
      columns: map['columns'] == null ? null : ((map['columns']! as List).cast<String>()).input(),
    );
  }
}

