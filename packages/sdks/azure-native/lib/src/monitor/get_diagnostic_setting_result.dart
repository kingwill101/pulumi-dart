// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_log_settings_response.dart';
import 'diagnostics_metric_settings_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDiagnosticSetting.
class GetDiagnosticSettingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource Id for the event hub authorization rule.
  final String? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final String? eventHubName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: &lt;normalized service identity&gt;_&lt;normalized category name&gt;. Possible values are: Dedicated and null (null is default.)
  final String? logAnalyticsDestinationType;
  /// The list of logs settings.
  final List<DiagnosticsLogSettingsResponse>? logs;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  final String? marketplacePartnerId;
  /// The list of metric settings.
  final List<DiagnosticsMetricSettingsResponse>? metrics;
  /// The name of the resource
  final String? name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final String? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final String? storageAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final String? workspaceId;

  /// Creates a new [GetDiagnosticSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [logAnalyticsDestinationType] A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: &lt;normalized service identity&gt;_&lt;normalized category name&gt;. Possible values are: Dedicated and null (null is default.)
  /// [logs] The list of logs settings.
  /// [marketplacePartnerId] The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  /// [metrics] The list of metric settings.
  /// [name] The name of the resource
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workspaceId] The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  const GetDiagnosticSettingResult({
    this.azureApiVersion,
    this.eventHubAuthorizationRuleId,
    this.eventHubName,
    this.id,
    this.logAnalyticsDestinationType,
    this.logs,
    this.marketplacePartnerId,
    this.metrics,
    this.name,
    this.serviceBusRuleId,
    this.storageAccountId,
    this.systemData,
    this.type,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'id': ?id,
      'logAnalyticsDestinationType': ?logAnalyticsDestinationType,
      'logs': ?(() { final guardedValue = logs; if (guardedValue == null) return null; return pulumi.Input.encodeList<DiagnosticsLogSettingsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'marketplacePartnerId': ?marketplacePartnerId,
      'metrics': ?(() { final guardedValue = metrics; if (guardedValue == null) return null; return pulumi.Input.encodeList<DiagnosticsMetricSettingsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetDiagnosticSettingResult.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticSettingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubAuthorizationRuleId: (() { final guardedValue = map['eventHubAuthorizationRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logAnalyticsDestinationType: (() { final guardedValue = map['logAnalyticsDestinationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticsLogSettingsResponse>(guardedValue, (value) => DiagnosticsLogSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      marketplacePartnerId: (() { final guardedValue = map['marketplacePartnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiagnosticsMetricSettingsResponse>(guardedValue, (value) => DiagnosticsMetricSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBusRuleId: (() { final guardedValue = map['serviceBusRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
