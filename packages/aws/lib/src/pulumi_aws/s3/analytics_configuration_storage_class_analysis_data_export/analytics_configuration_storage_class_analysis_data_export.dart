// ignore_for_file: unused_element, unnecessary_cast

import '../analytics_configuration_storage_class_analysis_data_export_destination/analytics_configuration_storage_class_analysis_data_export_destination.dart';

class AnalyticsConfigurationStorageClassAnalysisDataExport {
  /// Specifies the destination for the exported analytics data (documented below).
  final AnalyticsConfigurationStorageClassAnalysisDataExportDestination
      destination;

  /// Schema version of exported analytics data. Allowed values: `V_1`. Default value: `V_1`.
  final String? outputSchemaVersion;

  AnalyticsConfigurationStorageClassAnalysisDataExport({
    required this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination.toMap();
    final outputSchemaVersionValue = outputSchemaVersion;
    if (outputSchemaVersionValue != null) {
      map['outputSchemaVersion'] = outputSchemaVersionValue;
    }
    return map;
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExport.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysisDataExport(
      destination:
          AnalyticsConfigurationStorageClassAnalysisDataExportDestination
              .fromMap((map['destination'] as Map).cast<String, dynamic>()),
      outputSchemaVersion: map['outputSchemaVersion'] == null
          ? null
          : map['outputSchemaVersion'] as String,
    );
  }
}
