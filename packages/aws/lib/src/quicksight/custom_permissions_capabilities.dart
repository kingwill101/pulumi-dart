// ignore_for_file: unused_element, unnecessary_cast

class CustomPermissionsCapabilities {
  /// The ability to add or run anomaly detection. Valid values: `DENY`.
  final String? addOrRunAnomalyDetectionForAnalyses;

  /// The ability to create and update email reports. Valid values: `DENY`.
  final String? createAndUpdateDashboardEmailReports;

  /// The ability to create and update data sources. Valid values: `DENY`.
  final String? createAndUpdateDataSources;

  /// The ability to create and update datasets. Valid values: `DENY`.
  final String? createAndUpdateDatasets;

  /// The ability to export to create and update themes. Valid values: `DENY`.
  final String? createAndUpdateThemes;

  /// The ability to create and update threshold alerts. Valid values: `DENY`.
  final String? createAndUpdateThresholdAlerts;

  /// The ability to create shared folders. Valid values: `DENY`.
  final String? createSharedFolders;

  /// The ability to create a SPICE dataset. Valid values: `DENY`.
  final String? createSpiceDataset;

  /// The ability to export to CSV files from the UI. Valid values: `DENY`.
  final String? exportToCsv;

  /// The ability to export to CSV files in scheduled email reports. Valid values: `DENY`.
  final String? exportToCsvInScheduledReports;

  /// The ability to export to Excel files from the UI. Valid values: `DENY`.
  final String? exportToExcel;

  /// The ability to export to Excel files in scheduled email reports. Valid values: `DENY`.
  final String? exportToExcelInScheduledReports;

  /// The ability to export to PDF files from the UI. Valid values: `DENY`.
  final String? exportToPdf;

  /// The ability to export to PDF files in scheduled email reports. Valid values: `DENY`.
  final String? exportToPdfInScheduledReports;

  /// The ability to include content in scheduled email reports. Valid values: `DENY`.
  final String? includeContentInScheduledReportsEmail;

  /// The ability to print reports. Valid values: `DENY`.
  final String? printReports;

  /// The ability to rename shared folders. Valid values: `DENY`.
  final String? renameSharedFolders;

  /// The ability to share analyses. Valid values: `DENY`.
  final String? shareAnalyses;

  /// The ability to share dashboards. Valid values: `DENY`.
  final String? shareDashboards;

  /// The ability to share data sources. Valid values: `DENY`.
  final String? shareDataSources;

  /// The ability to share datasets. Valid values: `DENY`.
  final String? shareDatasets;

  /// The ability to subscribe to email reports. Valid values: `DENY`.
  final String? subscribeDashboardEmailReports;

  /// The ability to view account SPICE capacity. Valid values: `DENY`.
  final String? viewAccountSpiceCapacity;

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
  CustomPermissionsCapabilities({
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
      'addOrRunAnomalyDetectionForAnalyses':
          ?addOrRunAnomalyDetectionForAnalyses,
      'createAndUpdateDashboardEmailReports':
          ?createAndUpdateDashboardEmailReports,
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
      'includeContentInScheduledReportsEmail':
          ?includeContentInScheduledReportsEmail,
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
      addOrRunAnomalyDetectionForAnalyses:
          map['addOrRunAnomalyDetectionForAnalyses'] == null
          ? null
          : map['addOrRunAnomalyDetectionForAnalyses'] as String,
      createAndUpdateDashboardEmailReports:
          map['createAndUpdateDashboardEmailReports'] == null
          ? null
          : map['createAndUpdateDashboardEmailReports'] as String,
      createAndUpdateDataSources: map['createAndUpdateDataSources'] == null
          ? null
          : map['createAndUpdateDataSources'] as String,
      createAndUpdateDatasets: map['createAndUpdateDatasets'] == null
          ? null
          : map['createAndUpdateDatasets'] as String,
      createAndUpdateThemes: map['createAndUpdateThemes'] == null
          ? null
          : map['createAndUpdateThemes'] as String,
      createAndUpdateThresholdAlerts:
          map['createAndUpdateThresholdAlerts'] == null
          ? null
          : map['createAndUpdateThresholdAlerts'] as String,
      createSharedFolders: map['createSharedFolders'] == null
          ? null
          : map['createSharedFolders'] as String,
      createSpiceDataset: map['createSpiceDataset'] == null
          ? null
          : map['createSpiceDataset'] as String,
      exportToCsv: map['exportToCsv'] == null
          ? null
          : map['exportToCsv'] as String,
      exportToCsvInScheduledReports:
          map['exportToCsvInScheduledReports'] == null
          ? null
          : map['exportToCsvInScheduledReports'] as String,
      exportToExcel: map['exportToExcel'] == null
          ? null
          : map['exportToExcel'] as String,
      exportToExcelInScheduledReports:
          map['exportToExcelInScheduledReports'] == null
          ? null
          : map['exportToExcelInScheduledReports'] as String,
      exportToPdf: map['exportToPdf'] == null
          ? null
          : map['exportToPdf'] as String,
      exportToPdfInScheduledReports:
          map['exportToPdfInScheduledReports'] == null
          ? null
          : map['exportToPdfInScheduledReports'] as String,
      includeContentInScheduledReportsEmail:
          map['includeContentInScheduledReportsEmail'] == null
          ? null
          : map['includeContentInScheduledReportsEmail'] as String,
      printReports: map['printReports'] == null
          ? null
          : map['printReports'] as String,
      renameSharedFolders: map['renameSharedFolders'] == null
          ? null
          : map['renameSharedFolders'] as String,
      shareAnalyses: map['shareAnalyses'] == null
          ? null
          : map['shareAnalyses'] as String,
      shareDashboards: map['shareDashboards'] == null
          ? null
          : map['shareDashboards'] as String,
      shareDataSources: map['shareDataSources'] == null
          ? null
          : map['shareDataSources'] as String,
      shareDatasets: map['shareDatasets'] == null
          ? null
          : map['shareDatasets'] as String,
      subscribeDashboardEmailReports:
          map['subscribeDashboardEmailReports'] == null
          ? null
          : map['subscribeDashboardEmailReports'] as String,
      viewAccountSpiceCapacity: map['viewAccountSpiceCapacity'] == null
          ? null
          : map['viewAccountSpiceCapacity'] as String,
    );
  }
}
