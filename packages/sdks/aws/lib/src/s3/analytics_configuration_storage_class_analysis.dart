// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_configuration_storage_class_analysis_data_export.dart';

class AnalyticsConfigurationStorageClassAnalysis {
  /// Data export configuration (documented below).
  final pulumi.Input<AnalyticsConfigurationStorageClassAnalysisDataExport> dataExport;

  /// Creates a new [AnalyticsConfigurationStorageClassAnalysis].
  /// [dataExport] Data export configuration (documented below).
  AnalyticsConfigurationStorageClassAnalysis({
    required this.dataExport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExport': pulumi.Input.mapInputValue<AnalyticsConfigurationStorageClassAnalysisDataExport, Map<String, dynamic>>(dataExport, (value) => value.toMap()),
    };
  }

  factory AnalyticsConfigurationStorageClassAnalysis.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationStorageClassAnalysis(
      dataExport: pulumi.Input.fromValue(AnalyticsConfigurationStorageClassAnalysisDataExport.fromMap((map['dataExport']! as Map).cast<String, dynamic>())),
    );
  }
}

