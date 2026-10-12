// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomPermissionsCapabilities {
  /// Ability to add or run anomaly detection. Valid values: `DENY`.
  final pulumi.Input<String?>? addOrRunAnomalyDetectionForAnalyses;
  /// Ability to create and update email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateDashboardEmailReports;
  /// Ability to create and update data sources. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateDataSources;
  /// Ability to create and update datasets. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateDatasets;
  /// Ability to create and update themes. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateThemes;
  /// Ability to create and update threshold alerts. Valid values: `DENY`.
  final pulumi.Input<String?>? createAndUpdateThresholdAlerts;
  /// Ability to create shared folders. Valid values: `DENY`.
  final pulumi.Input<String?>? createSharedFolders;
  /// Ability to create a SPICE dataset. Valid values: `DENY`.
  final pulumi.Input<String?>? createSpiceDataset;
  /// Ability to export to CSV files from the UI. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToCsv;
  /// Ability to export to CSV files in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToCsvInScheduledReports;
  /// Ability to export to Excel files from the UI. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToExcel;
  /// Ability to export to Excel files in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToExcelInScheduledReports;
  /// Ability to export to PDF files from the UI. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToPdf;
  /// Ability to export to PDF files in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? exportToPdfInScheduledReports;
  /// Ability to include content in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? includeContentInScheduledReportsEmail;
  /// Ability to print reports. Valid values: `DENY`.
  final pulumi.Input<String?>? printReports;
  /// Ability to rename shared folders. Valid values: `DENY`.
  final pulumi.Input<String?>? renameSharedFolders;
  /// Ability to share analyses. Valid values: `DENY`.
  final pulumi.Input<String?>? shareAnalyses;
  /// Ability to share dashboards. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDashboards;
  /// Ability to share data sources. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDataSources;
  /// Ability to share datasets. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDatasets;
  /// Ability to subscribe to email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? subscribeDashboardEmailReports;
  /// Ability to view account SPICE capacity. Valid values: `DENY`.
  final pulumi.Input<String?>? viewAccountSpiceCapacity;

  /// Creates a new [CustomPermissionsCapabilities].
  /// [addOrRunAnomalyDetectionForAnalyses] Ability to add or run anomaly detection. Valid values: `DENY`.
  /// [createAndUpdateDashboardEmailReports] Ability to create and update email reports. Valid values: `DENY`.
  /// [createAndUpdateDataSources] Ability to create and update data sources. Valid values: `DENY`.
  /// [createAndUpdateDatasets] Ability to create and update datasets. Valid values: `DENY`.
  /// [createAndUpdateThemes] Ability to create and update themes. Valid values: `DENY`.
  /// [createAndUpdateThresholdAlerts] Ability to create and update threshold alerts. Valid values: `DENY`.
  /// [createSharedFolders] Ability to create shared folders. Valid values: `DENY`.
  /// [createSpiceDataset] Ability to create a SPICE dataset. Valid values: `DENY`.
  /// [exportToCsv] Ability to export to CSV files from the UI. Valid values: `DENY`.
  /// [exportToCsvInScheduledReports] Ability to export to CSV files in scheduled email reports. Valid values: `DENY`.
  /// [exportToExcel] Ability to export to Excel files from the UI. Valid values: `DENY`.
  /// [exportToExcelInScheduledReports] Ability to export to Excel files in scheduled email reports. Valid values: `DENY`.
  /// [exportToPdf] Ability to export to PDF files from the UI. Valid values: `DENY`.
  /// [exportToPdfInScheduledReports] Ability to export to PDF files in scheduled email reports. Valid values: `DENY`.
  /// [includeContentInScheduledReportsEmail] Ability to include content in scheduled email reports. Valid values: `DENY`.
  /// [printReports] Ability to print reports. Valid values: `DENY`.
  /// [renameSharedFolders] Ability to rename shared folders. Valid values: `DENY`.
  /// [shareAnalyses] Ability to share analyses. Valid values: `DENY`.
  /// [shareDashboards] Ability to share dashboards. Valid values: `DENY`.
  /// [shareDataSources] Ability to share data sources. Valid values: `DENY`.
  /// [shareDatasets] Ability to share datasets. Valid values: `DENY`.
  /// [subscribeDashboardEmailReports] Ability to subscribe to email reports. Valid values: `DENY`.
  /// [viewAccountSpiceCapacity] Ability to view account SPICE capacity. Valid values: `DENY`.
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
