// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_log_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagementGroupDiagnosticSetting.
class GetManagementGroupDiagnosticSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource Id for the event hub authorization rule.
  final String? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final String? eventHubName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The list of logs settings.
  final List<ManagementGroupLogSettingsResponse>? logs;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  final String? marketplacePartnerId;
  /// The name of the resource
  final String name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final String? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final String? storageAccountId;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final String? workspaceId;

  /// Creates a new [GetManagementGroupDiagnosticSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [logs] The list of logs settings.
  /// [marketplacePartnerId] The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  /// [name] The name of the resource
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [systemData] The system metadata related to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workspaceId] The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  GetManagementGroupDiagnosticSettingResult({
    required this.azureApiVersion,
    this.eventHubAuthorizationRuleId,
    this.eventHubName,
    required this.id,
    this.logs,
    this.marketplacePartnerId,
    required this.name,
    this.serviceBusRuleId,
    this.storageAccountId,
    required this.systemData,
    required this.type,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'id': id,
      'logs': ?logs == null ? null : pulumi.Input.encodeList<ManagementGroupLogSettingsResponse, Map<String, dynamic>>(logs!, (value) => value.toMap()),
      'marketplacePartnerId': ?marketplacePartnerId,
      'name': name,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'systemData': systemData.toMap(),
      'type': type,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetManagementGroupDiagnosticSettingResult.fromMap(Map<String, dynamic> map) {
    return GetManagementGroupDiagnosticSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eventHubAuthorizationRuleId: map['eventHubAuthorizationRuleId'] == null ? null : map['eventHubAuthorizationRuleId'] as String,
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      id: map['id'] as String,
      logs: map['logs'] == null ? null : pulumi.Input.decodeList<ManagementGroupLogSettingsResponse>(map['logs'], (value) => ManagementGroupLogSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      marketplacePartnerId: map['marketplacePartnerId'] == null ? null : map['marketplacePartnerId'] as String,
      name: map['name'] as String,
      serviceBusRuleId: map['serviceBusRuleId'] == null ? null : map['serviceBusRuleId'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

