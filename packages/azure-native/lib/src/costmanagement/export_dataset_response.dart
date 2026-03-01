// ignore_for_file: unused_element, unnecessary_cast

import 'export_dataset_configuration_response.dart';

/// The definition for data in the export.
class ExportDatasetResponse {
  /// The export dataset configuration.
  final ExportDatasetConfigurationResponse? configuration;
  /// The granularity of rows in the export. Currently only 'Daily' is supported.
  final String? granularity;

  /// Creates a new [ExportDatasetResponse].
  /// [configuration] The export dataset configuration.
  /// [granularity] The granularity of rows in the export. Currently only 'Daily' is supported.
  ExportDatasetResponse({
    this.configuration,
    this.granularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'granularity': ?granularity,
    };
  }

  factory ExportDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ExportDatasetResponse(
      configuration: map['configuration'] == null ? null : ExportDatasetConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      granularity: map['granularity'] == null ? null : map['granularity'] as String,
    );
  }
}

