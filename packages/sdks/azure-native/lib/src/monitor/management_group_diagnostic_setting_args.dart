// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_log_settings.dart';

/// {@template pulumi_monitor_management_group_diagnostic_setting_args_doc}
/// The set of arguments for ManagementGroupDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_management_group_diagnostic_setting_args_doc}
class ManagementGroupDiagnosticSettingArgs {
  /// The resource Id for the event hub authorization rule.
  final pulumi.Input<String>? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final pulumi.Input<String>? eventHubName;
  /// The list of logs settings.
  final pulumi.Input<List<ManagementGroupLogSettings>>? logs;
  /// The management group id.
  final pulumi.Input<String> managementGroupId;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  final pulumi.Input<String>? marketplacePartnerId;
  /// The name of the diagnostic setting.
  final pulumi.Input<String>? name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final pulumi.Input<String>? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final pulumi.Input<String>? storageAccountId;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ManagementGroupDiagnosticSettingArgs].
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [logs] The list of logs settings.
  /// [managementGroupId] The management group id.
  /// [marketplacePartnerId] The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  /// [name] The name of the diagnostic setting.
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [workspaceId] The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  const ManagementGroupDiagnosticSettingArgs({
    this.eventHubAuthorizationRuleId,
    this.eventHubName,
    this.logs,
    required this.managementGroupId,
    this.marketplacePartnerId,
    this.name,
    this.serviceBusRuleId,
    this.storageAccountId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'logs': ?pulumi.Input.mapOptionalInputValue<List<ManagementGroupLogSettings>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<ManagementGroupLogSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managementGroupId': managementGroupId,
      'marketplacePartnerId': ?marketplacePartnerId,
      'name': ?name,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'workspaceId': ?workspaceId,
    };
  }

  factory ManagementGroupDiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return ManagementGroupDiagnosticSettingArgs(
      eventHubAuthorizationRuleId: (() { final guardedValue = map['eventHubAuthorizationRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagementGroupLogSettings>(guardedValue, (value) => ManagementGroupLogSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      marketplacePartnerId: (() { final guardedValue = map['marketplacePartnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusRuleId: (() { final guardedValue = map['serviceBusRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

