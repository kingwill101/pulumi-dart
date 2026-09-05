// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomPermissionsCapabilities {
  /// The ability to add or run anomaly detection. Valid values: `DENY`.
  final pulumi.Input<String?>? addOrRunAnomalyDetectionForAnalyses;
  /// The ability to create and update email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateDashboardEmailReports;
  /// The ability to create and update data sources. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateDataSources;
  /// The ability to create and update datasets. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateDatasets;
  /// The ability to export to create and update themes. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateThemes;
  /// The ability to create and update threshold alerts. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateThresholdAlerts;
  /// The ability to create shared folders. Valid values: `DENY`.
  final pulumi.Input<String?>? createSharedFolders;
  /// The ability to create a SPICE dataset. Valid values: `DENY`.
  final pulumi.Input<String?>? createSpiceDataset;
  /// The ability to export to CSV files from the UI. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToCsv;
  /// The ability to export to CSV files in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToCsvInScheduledReports;
  /// The ability to export to Excel files from the UI. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToExcel;
  /// The ability to export to Excel files in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToExcelInScheduledReports;
  /// The ability to export to PDF files from the UI. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToPdf;
  /// The ability to export to PDF files in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToPdfInScheduledReports;
  /// The ability to include content in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? includeContentInScheduledReportsEmail;
  /// The ability to print reports. Valid values: `DENY`.
  final pulumi.Input<String?>? printReports;
  /// The ability to rename shared folders. Valid values: `DENY`.
  final pulumi.Input<String?>? renameSharedFolders;
  /// The ability to share analyses. Valid values: `DENY`.
  final pulumi.Input<String?>? shareAnalyses;
  /// The ability to share dashboards. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDashboards;
  /// The ability to share data sources. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDataSources;
  /// The ability to share datasets. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDatasets;
  /// The ability to subscribe to email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? subscribeDashboardEmailReports;
  /// The ability to view account SPICE capacity. Valid values: `DENY`.
  final pulumi.Input<String?>? viewAccountSpiceCapacity;

  /// Creates a new [CustomPermissionsCapabilities].
  /// [addOrRunAnomalyDetectionForAnalyses] The ability to add or run anomaly detection. Valid values: `DENY`.
  /// [createAndUpdateDashboardEmailReports] The ability to create and update email reports. Valid values: `DENY`.
  /// [createAndUpdateDataSources] The ability to create and update data sources. Valid values: `DENY`.
  /// [createAndUpdateDatasets] The ability to create and update datasets. Valid values: `DENY`.
  /// [createAndUpdateThemes] The ability to export to create and update themes. Valid values: `DENY`.
  /// [createAndUpdateThresholdAlerts] The ability to create and update threshold alerts. Valid values: `DENY`.
  /// [createSharedFolders] The ability to create shared folders. Valid values: `DENY`.
  /// [createSpiceDataset] The ability to create a SPICE dataset. Valid values: `DENY`.
  /// [exportToCsv] The ability to export to CSV files from the UI. Valid values: `DENY`.
  /// [exportToCsvInScheduledReports] The ability to export to CSV files in scheduled email reports. Valid values: `DENY`.
  /// [exportToExcel] The ability to export to Excel files from the UI. Valid values: `DENY`.
  /// [exportToExcelInScheduledReports] The ability to export to Excel files in scheduled email reports. Valid values: `DENY`.
  /// [exportToPdf] The ability to export to PDF files from the UI. Valid values: `DENY`.
  /// [exportToPdfInScheduledReports] The ability to export to PDF files in scheduled email reports. Valid values: `DENY`.
  /// [includeContentInScheduledReportsEmail] The ability to include content in scheduled email reports. Valid values: `DENY`.
  /// [printReports] The ability to print reports. Valid values: `DENY`.
  /// [renameSharedFolders] The ability to rename shared folders. Valid values: `DENY`.
  /// [shareAnalyses] The ability to share analyses. Valid values: `DENY`.
  /// [shareDashboards] The ability to share dashboards. Valid values: `DENY`.
  /// [shareDataSources] The ability to share data sources. Valid values: `DENY`.
  /// [shareDatasets] The ability to share datasets. Valid values: `DENY`.
  /// [subscribeDashboardEmailReports] The ability to subscribe to email reports. Valid values: `DENY`.
  /// [viewAccountSpiceCapacity] The ability to view account SPICE capacity. Valid values: `DENY`.
  const CustomPermissionsCapabilities({
    this.addOrRunAnomalyDetectionForAnalyses,
    this.createAndUpdateDashboardEmailReports,
    this.createAndUpdateDataSources,
    this.createAndUpdateDatasets,
    this.createAndUpdateThemes,
    this.createAndUpdateThresholdAlerts,
    this.createSharedFolders,
    this.createSpiceDataset,
    this.exportToCsv,
    this.exportToCsvInScheduledReports,
    this.exportToExcel,
    this.exportToExcelInScheduledReports,
    this.exportToPdf,
    this.exportToPdfInScheduledReports,
    this.includeContentInScheduledReportsEmail,
    this.printReports,
    this.renameSharedFolders,
    this.shareAnalyses,
    this.shareDashboards,
    this.shareDataSources,
    this.shareDatasets,
    this.subscribeDashboardEmailReports,
    this.viewAccountSpiceCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOrRunAnomalyDetectionForAnalyses': ?addOrRunAnomalyDetectionForAnalyses,
      'createAndUpdateDashboardEmailReports': ?createAndUpdateDashboardEmailReports,
      'createAndUpdateDataSources': ?createAndUpdateDataSources,
      'createAndUpdateDatasets': ?createAndUpdateDatasets,
      'createAndUpdateThemes': ?createAndUpdateThemes,
      'createAndUpdateThresholdAlerts': ?createAndUpdateThresholdAlerts,
      'createSharedFolders': ?createSharedFolders,
      'createSpiceDataset': ?createSpiceDataset,
      'exportToCsv': ?exportToCsv,
      'exportToCsvInScheduledReports': ?exportToCsvInScheduledReports,
      'exportToExcel': ?exportToExcel,
      'exportToExcelInScheduledReports': ?exportToExcelInScheduledReports,
      'exportToPdf': ?exportToPdf,
      'exportToPdfInScheduledReports': ?exportToPdfInScheduledReports,
      'includeContentInScheduledReportsEmail': ?includeContentInScheduledReportsEmail,
      'printReports': ?printReports,
      'renameSharedFolders': ?renameSharedFolders,
      'shareAnalyses': ?shareAnalyses,
      'shareDashboards': ?shareDashboards,
      'shareDataSources': ?shareDataSources,
      'shareDatasets': ?shareDatasets,
      'subscribeDashboardEmailReports': ?subscribeDashboardEmailReports,
      'viewAccountSpiceCapacity': ?viewAccountSpiceCapacity,
    };
  }

  factory CustomPermissionsCapabilities.fromMap(Map<String, dynamic> map) {
    return CustomPermissionsCapabilities(
      addOrRunAnomalyDetectionForAnalyses: (() { final guardedValue = map['addOrRunAnomalyDetectionForAnalyses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateDashboardEmailReports: (() { final guardedValue = map['createAndUpdateDashboardEmailReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateDataSources: (() { final guardedValue = map['createAndUpdateDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateDatasets: (() { final guardedValue = map['createAndUpdateDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateThemes: (() { final guardedValue = map['createAndUpdateThemes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateThresholdAlerts: (() { final guardedValue = map['createAndUpdateThresholdAlerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createSharedFolders: (() { final guardedValue = map['createSharedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createSpiceDataset: (() { final guardedValue = map['createSpiceDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToCsv: (() { final guardedValue = map['exportToCsv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToCsvInScheduledReports: (() { final guardedValue = map['exportToCsvInScheduledReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToExcel: (() { final guardedValue = map['exportToExcel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToExcelInScheduledReports: (() { final guardedValue = map['exportToExcelInScheduledReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToPdf: (() { final guardedValue = map['exportToPdf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToPdfInScheduledReports: (() { final guardedValue = map['exportToPdfInScheduledReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeContentInScheduledReportsEmail: (() { final guardedValue = map['includeContentInScheduledReportsEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      printReports: (() { final guardedValue = map['printReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renameSharedFolders: (() { final guardedValue = map['renameSharedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareAnalyses: (() { final guardedValue = map['shareAnalyses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareDashboards: (() { final guardedValue = map['shareDashboards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareDataSources: (() { final guardedValue = map['shareDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareDatasets: (() { final guardedValue = map['shareDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribeDashboardEmailReports: (() { final guardedValue = map['subscribeDashboardEmailReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewAccountSpiceCapacity: (() { final guardedValue = map['viewAccountSpiceCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
