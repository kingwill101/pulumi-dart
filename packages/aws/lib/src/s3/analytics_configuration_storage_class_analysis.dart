// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_configuration_storage_class_analysis_data_export.dart';

class AnalyticsConfigurationStorageClassAnalysis {
  /// Data export configuration (documented below).
  final AnalyticsConfigurationStorageClassAnalysisDataExport dataExport;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysis].
  /// [dataExport] Data export configuration (documented below).
  AnalyticsConfigurationStorageClassAnalysis({
    required this.dataExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExport'] = dataExport.toMap();
    return map;
  }

  factory AnalyticsConfigurationStorageClassAnalysis.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysis(
      dataExport: AnalyticsConfigurationStorageClassAnalysisDataExport.fromMap(
          (map['dataExport'] as Map).cast<String, dynamic>()),
    );
  }
}
