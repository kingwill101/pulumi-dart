// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_configuration_storage_class_analysis_data_export_destination.dart';

class AnalyticsConfigurationStorageClassAnalysisDataExport {
  /// Specifies the destination for the exported analytics data (documented below).
  final AnalyticsConfigurationStorageClassAnalysisDataExportDestination
  destination;

  /// Schema version of exported analytics data. Allowed values: `V_1`. Default value: `V_1`.
  final String? outputSchemaVersion;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysisDataExport].
  /// [destination] Specifies the destination for the exported analytics data (documented below).
  /// [outputSchemaVersion] Schema version of exported analytics data. Allowed values: `V_1`. Default value: `V_1`.
  AnalyticsConfigurationStorageClassAnalysisDataExport({
    required this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
      'outputSchemaVersion': ?outputSchemaVersion,
    };
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExport.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyticsConfigurationStorageClassAnalysisDataExport(
      destination:
          AnalyticsConfigurationStorageClassAnalysisDataExportDestination.fromMap(
            (map['destination'] as Map).cast<String, dynamic>(),
          ),
      outputSchemaVersion: map['outputSchemaVersion'] == null
          ? null
          : map['outputSchemaVersion'] as String,
    );
  }
}
