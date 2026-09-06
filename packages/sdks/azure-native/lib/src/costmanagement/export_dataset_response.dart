// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_dataset_configuration_response.dart';

/// The definition for data in the export.
class ExportDatasetResponse {
  /// The export dataset configuration.
  final pulumi.Input<ExportDatasetConfigurationResponse?>? configuration;
  /// The granularity of rows in the export. Currently only 'Daily' is supported.
  final pulumi.Input<String?>? granularity;

  /// Creates a new [ExportDatasetResponse].
  /// [configuration] The export dataset configuration.
  /// [granularity] The granularity of rows in the export. Currently only 'Daily' is supported.
  const ExportDatasetResponse({
    this.configuration,
    this.granularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<ExportDatasetConfigurationResponse, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'granularity': ?granularity,
    };
  }

  factory ExportDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ExportDatasetResponse(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportDatasetConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      granularity: (() { final guardedValue = map['granularity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
