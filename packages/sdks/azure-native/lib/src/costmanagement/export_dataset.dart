// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_dataset_configuration.dart';

/// The definition for data in the export.
class ExportDataset {
  /// The export dataset configuration.
  final pulumi.Input<ExportDatasetConfiguration>? configuration;
  /// The granularity of rows in the export. Currently only 'Daily' is supported.
  final pulumi.Input<String>? granularity;

  /// Creates a new [ExportDataset].
  /// [configuration] The export dataset configuration.
  /// [granularity] The granularity of rows in the export. Currently only 'Daily' is supported.
  ExportDataset({
    this.configuration,
    this.granularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ExportDatasetConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'granularity': ?granularity,
    };
  }

  factory ExportDataset.fromMap(Map<String, dynamic> map) {
    return ExportDataset(
      configuration: map['configuration'] == null ? null : (ExportDatasetConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      granularity: map['granularity'] == null ? null : (map['granularity'] as String).input(),
    );
  }
}

