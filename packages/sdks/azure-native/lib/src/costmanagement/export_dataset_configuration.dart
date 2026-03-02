// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The export dataset configuration. Allows columns to be selected for the export. If not provided then the export will include all available columns.
class ExportDatasetConfiguration {
  /// Array of column names to be included in the export. If not provided then the export will include all available columns. The available columns can vary by customer channel (see examples).
  final pulumi.Input<List<String>>? columns;

  /// Creates a new [ExportDatasetConfiguration].
  /// [columns] Array of column names to be included in the export. If not provided then the export will include all available columns. The available columns can vary by customer channel (see examples).
  ExportDatasetConfiguration({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
    };
  }

  factory ExportDatasetConfiguration.fromMap(Map<String, dynamic> map) {
    return ExportDatasetConfiguration(
      columns: map['columns'] == null ? null : ((map['columns'] as List).cast<String>()).input(),
    );
  }
}

