// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_configuration_storage_class_analysis_data_export_destination.dart';

class AnalyticsConfigurationStorageClassAnalysisDataExport {
  /// Specifies the destination for the exported analytics data (documented below).
  final pulumi.Input<AnalyticsConfigurationStorageClassAnalysisDataExportDestination> destination;
  /// Schema version of exported analytics data. Allowed values: `V_1`. Default value: `V_1`.
  final pulumi.Input<String>? outputSchemaVersion;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysisDataExport].
  /// [destination] Specifies the destination for the exported analytics data (documented below).
  /// [outputSchemaVersion] Schema version of exported analytics data. Allowed values: `V_1`. Default value: `V_1`.
  const AnalyticsConfigurationStorageClassAnalysisDataExport({
    required this.destination,
    this.outputSchemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<AnalyticsConfigurationStorageClassAnalysisDataExportDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'outputSchemaVersion': ?outputSchemaVersion,
    };
  }

  factory AnalyticsConfigurationStorageClassAnalysisDataExport.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysisDataExport(
      destination: pulumi.Input.fromValue(AnalyticsConfigurationStorageClassAnalysisDataExportDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      outputSchemaVersion: (() { final guardedValue = map['outputSchemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

