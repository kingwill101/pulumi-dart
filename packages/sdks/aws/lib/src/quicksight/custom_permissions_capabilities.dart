// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomPermissionsCapabilities {
  /// Ability to perform actions in external services through Action connectors. Valid values: `DENY`.
  final pulumi.Input<String?>? action;
  /// Ability to add or run anomaly detection. Valid values: `DENY`.
  final pulumi.Input<String?>? addOrRunAnomalyDetectionForAnalyses;
  /// Ability to perform analysis-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? analysis;
  /// Ability to perform automate-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? automate;
  /// Ability to perform chat-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? chatAgent;
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
  /// Ability to create chat agents. Valid values: `DENY`.
  final pulumi.Input<String?>? createChatAgents;
  /// Ability to create shared folders. Valid values: `DENY`.
  final pulumi.Input<String?>? createSharedFolders;
  /// Ability to create a SPICE dataset. Valid values: `DENY`.
  final pulumi.Input<String?>? createSpiceDataset;
  /// Ability to perform dashboard-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? dashboard;
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
  /// Ability to perform flow-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? flow;
  /// Ability to include content in scheduled email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? includeContentInScheduledReportsEmail;
  /// Ability to use knowledge bases to specify content from external applications. Valid values: `DENY`.
  final pulumi.Input<String?>? knowledgeBase;
  /// Ability to use UI Agent step to perform tasks on public websites. Valid values: `DENY`.
  final pulumi.Input<String?>? performFlowUiTask;
  /// Ability to print reports. Valid values: `DENY`.
  final pulumi.Input<String?>? printReports;
  /// Ability to enable approvals for flow share. Valid values: `DENY`.
  final pulumi.Input<String?>? publishWithoutApproval;
  /// Ability to rename shared folders. Valid values: `DENY`.
  final pulumi.Input<String?>? renameSharedFolders;
  /// Ability to perform research-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? research;
  /// Ability to share analyses. Valid values: `DENY`.
  final pulumi.Input<String?>? shareAnalyses;
  /// Ability to share dashboards. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDashboards;
  /// Ability to share data sources. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDataSources;
  /// Ability to share datasets. Valid values: `DENY`.
  final pulumi.Input<String?>? shareDatasets;
  /// Ability to perform space-related actions. Valid values: `DENY`.
  final pulumi.Input<String?>? space;
  /// Ability to subscribe to email reports. Valid values: `DENY`.
  final pulumi.Input<String?>? subscribeDashboardEmailReports;
  /// Ability to use internet to enhance results in Chat Agents, Flows, and Quick Research. Valid values: `DENY`.
  final pulumi.Input<String?>? useAgentWebSearch;
  /// Ability to use Bedrock models for general knowledge step in flows. Valid values: `DENY`.
  final pulumi.Input<String?>? useBedrockModels;
  /// Ability to view account SPICE capacity. Valid values: `DENY`.
  final pulumi.Input<String?>? viewAccountSpiceCapacity;

  /// Creates a new [CustomPermissionsCapabilities].
  /// [action] Ability to perform actions in external services through Action connectors. Valid values: `DENY`.
  /// [addOrRunAnomalyDetectionForAnalyses] Ability to add or run anomaly detection. Valid values: `DENY`.
  /// [analysis] Ability to perform analysis-related actions. Valid values: `DENY`.
  /// [automate] Ability to perform automate-related actions. Valid values: `DENY`.
  /// [chatAgent] Ability to perform chat-related actions. Valid values: `DENY`.
  /// [createAndUpdateDashboardEmailReports] Ability to create and update email reports. Valid values: `DENY`.
  /// [createAndUpdateDataSources] Ability to create and update data sources. Valid values: `DENY`.
  /// [createAndUpdateDatasets] Ability to create and update datasets. Valid values: `DENY`.
  /// [createAndUpdateThemes] Ability to create and update themes. Valid values: `DENY`.
  /// [createAndUpdateThresholdAlerts] Ability to create and update threshold alerts. Valid values: `DENY`.
  /// [createChatAgents] Ability to create chat agents. Valid values: `DENY`.
  /// [createSharedFolders] Ability to create shared folders. Valid values: `DENY`.
  /// [createSpiceDataset] Ability to create a SPICE dataset. Valid values: `DENY`.
  /// [dashboard] Ability to perform dashboard-related actions. Valid values: `DENY`.
  /// [exportToCsv] Ability to export to CSV files from the UI. Valid values: `DENY`.
  /// [exportToCsvInScheduledReports] Ability to export to CSV files in scheduled email reports. Valid values: `DENY`.
  /// [exportToExcel] Ability to export to Excel files from the UI. Valid values: `DENY`.
  /// [exportToExcelInScheduledReports] Ability to export to Excel files in scheduled email reports. Valid values: `DENY`.
  /// [exportToPdf] Ability to export to PDF files from the UI. Valid values: `DENY`.
  /// [exportToPdfInScheduledReports] Ability to export to PDF files in scheduled email reports. Valid values: `DENY`.
  /// [flow] Ability to perform flow-related actions. Valid values: `DENY`.
  /// [includeContentInScheduledReportsEmail] Ability to include content in scheduled email reports. Valid values: `DENY`.
  /// [knowledgeBase] Ability to use knowledge bases to specify content from external applications. Valid values: `DENY`.
  /// [performFlowUiTask] Ability to use UI Agent step to perform tasks on public websites. Valid values: `DENY`.
  /// [printReports] Ability to print reports. Valid values: `DENY`.
  /// [publishWithoutApproval] Ability to enable approvals for flow share. Valid values: `DENY`.
  /// [renameSharedFolders] Ability to rename shared folders. Valid values: `DENY`.
  /// [research] Ability to perform research-related actions. Valid values: `DENY`.
  /// [shareAnalyses] Ability to share analyses. Valid values: `DENY`.
  /// [shareDashboards] Ability to share dashboards. Valid values: `DENY`.
  /// [shareDataSources] Ability to share data sources. Valid values: `DENY`.
  /// [shareDatasets] Ability to share datasets. Valid values: `DENY`.
  /// [space] Ability to perform space-related actions. Valid values: `DENY`.
  /// [subscribeDashboardEmailReports] Ability to subscribe to email reports. Valid values: `DENY`.
  /// [useAgentWebSearch] Ability to use internet to enhance results in Chat Agents, Flows, and Quick Research. Valid values: `DENY`.
  /// [useBedrockModels] Ability to use Bedrock models for general knowledge step in flows. Valid values: `DENY`.
  /// [viewAccountSpiceCapacity] Ability to view account SPICE capacity. Valid values: `DENY`.
  const CustomPermissionsCapabilities({
    this.action,
    this.addOrRunAnomalyDetectionForAnalyses,
    this.analysis,
    this.automate,
    this.chatAgent,
    this.createAndUpdateDashboardEmailReports,
    this.createAndUpdateDataSources,
    this.createAndUpdateDatasets,
    this.createAndUpdateThemes,
    this.createAndUpdateThresholdAlerts,
    this.createChatAgents,
    this.createSharedFolders,
    this.createSpiceDataset,
    this.dashboard,
    this.exportToCsv,
    this.exportToCsvInScheduledReports,
    this.exportToExcel,
    this.exportToExcelInScheduledReports,
    this.exportToPdf,
    this.exportToPdfInScheduledReports,
    this.flow,
    this.includeContentInScheduledReportsEmail,
    this.knowledgeBase,
    this.performFlowUiTask,
    this.printReports,
    this.publishWithoutApproval,
    this.renameSharedFolders,
    this.research,
    this.shareAnalyses,
    this.shareDashboards,
    this.shareDataSources,
    this.shareDatasets,
    this.space,
    this.subscribeDashboardEmailReports,
    this.useAgentWebSearch,
    this.useBedrockModels,
    this.viewAccountSpiceCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'addOrRunAnomalyDetectionForAnalyses': ?addOrRunAnomalyDetectionForAnalyses,
      'analysis': ?analysis,
      'automate': ?automate,
      'chatAgent': ?chatAgent,
      'createAndUpdateDashboardEmailReports': ?createAndUpdateDashboardEmailReports,
      'createAndUpdateDataSources': ?createAndUpdateDataSources,
      'createAndUpdateDatasets': ?createAndUpdateDatasets,
      'createAndUpdateThemes': ?createAndUpdateThemes,
      'createAndUpdateThresholdAlerts': ?createAndUpdateThresholdAlerts,
      'createChatAgents': ?createChatAgents,
      'createSharedFolders': ?createSharedFolders,
      'createSpiceDataset': ?createSpiceDataset,
      'dashboard': ?dashboard,
      'exportToCsv': ?exportToCsv,
      'exportToCsvInScheduledReports': ?exportToCsvInScheduledReports,
      'exportToExcel': ?exportToExcel,
      'exportToExcelInScheduledReports': ?exportToExcelInScheduledReports,
      'exportToPdf': ?exportToPdf,
      'exportToPdfInScheduledReports': ?exportToPdfInScheduledReports,
      'flow': ?flow,
      'includeContentInScheduledReportsEmail': ?includeContentInScheduledReportsEmail,
      'knowledgeBase': ?knowledgeBase,
      'performFlowUiTask': ?performFlowUiTask,
      'printReports': ?printReports,
      'publishWithoutApproval': ?publishWithoutApproval,
      'renameSharedFolders': ?renameSharedFolders,
      'research': ?research,
      'shareAnalyses': ?shareAnalyses,
      'shareDashboards': ?shareDashboards,
      'shareDataSources': ?shareDataSources,
      'shareDatasets': ?shareDatasets,
      'space': ?space,
      'subscribeDashboardEmailReports': ?subscribeDashboardEmailReports,
      'useAgentWebSearch': ?useAgentWebSearch,
      'useBedrockModels': ?useBedrockModels,
      'viewAccountSpiceCapacity': ?viewAccountSpiceCapacity,
    };
  }

  factory CustomPermissionsCapabilities.fromMap(Map<String, dynamic> map) {
    return CustomPermissionsCapabilities(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addOrRunAnomalyDetectionForAnalyses: (() { final guardedValue = map['addOrRunAnomalyDetectionForAnalyses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automate: (() { final guardedValue = map['automate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chatAgent: (() { final guardedValue = map['chatAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateDashboardEmailReports: (() { final guardedValue = map['createAndUpdateDashboardEmailReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateDataSources: (() { final guardedValue = map['createAndUpdateDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateDatasets: (() { final guardedValue = map['createAndUpdateDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateThemes: (() { final guardedValue = map['createAndUpdateThemes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAndUpdateThresholdAlerts: (() { final guardedValue = map['createAndUpdateThresholdAlerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createChatAgents: (() { final guardedValue = map['createChatAgents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createSharedFolders: (() { final guardedValue = map['createSharedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createSpiceDataset: (() { final guardedValue = map['createSpiceDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboard: (() { final guardedValue = map['dashboard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToCsv: (() { final guardedValue = map['exportToCsv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToCsvInScheduledReports: (() { final guardedValue = map['exportToCsvInScheduledReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToExcel: (() { final guardedValue = map['exportToExcel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToExcelInScheduledReports: (() { final guardedValue = map['exportToExcelInScheduledReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToPdf: (() { final guardedValue = map['exportToPdf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToPdfInScheduledReports: (() { final guardedValue = map['exportToPdfInScheduledReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flow: (() { final guardedValue = map['flow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeContentInScheduledReportsEmail: (() { final guardedValue = map['includeContentInScheduledReportsEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      knowledgeBase: (() { final guardedValue = map['knowledgeBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performFlowUiTask: (() { final guardedValue = map['performFlowUiTask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      printReports: (() { final guardedValue = map['printReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publishWithoutApproval: (() { final guardedValue = map['publishWithoutApproval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renameSharedFolders: (() { final guardedValue = map['renameSharedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      research: (() { final guardedValue = map['research']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareAnalyses: (() { final guardedValue = map['shareAnalyses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareDashboards: (() { final guardedValue = map['shareDashboards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareDataSources: (() { final guardedValue = map['shareDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareDatasets: (() { final guardedValue = map['shareDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      space: (() { final guardedValue = map['space']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribeDashboardEmailReports: (() { final guardedValue = map['subscribeDashboardEmailReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useAgentWebSearch: (() { final guardedValue = map['useAgentWebSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useBedrockModels: (() { final guardedValue = map['useBedrockModels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      viewAccountSpiceCapacity: (() { final guardedValue = map['viewAccountSpiceCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
