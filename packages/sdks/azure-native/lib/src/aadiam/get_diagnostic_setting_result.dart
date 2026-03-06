// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_settings_response.dart';

/// Result data returned by getDiagnosticSetting.
class GetDiagnosticSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource Id for the event hub authorization rule.
  final String? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final String? eventHubName;
  /// Azure resource Id
  final String id;
  /// The list of logs settings.
  final List<LogSettingsResponse>? logs;
  /// Azure resource name
  final String name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final String? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final String? storageAccountId;
  /// Azure resource type
  final String type;
  /// The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final String? workspaceId;

  /// Creates a new [GetDiagnosticSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [id] Azure resource Id
  /// [logs] The list of logs settings.
  /// [name] Azure resource name
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [type] Azure resource type
  /// [workspaceId] The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  const GetDiagnosticSettingResult({
    required this.azureApiVersion,
    this.eventHubAuthorizationRuleId,
    this.eventHubName,
    required this.id,
    this.logs,
    required this.name,
    this.serviceBusRuleId,
    this.storageAccountId,
    required this.type,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'id': id,
      'logs': ?(() { final guardedValue = logs; if (guardedValue == null) return null; return pulumi.Input.encodeList<LogSettingsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'type': type,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetDiagnosticSettingResult.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eventHubAuthorizationRuleId: (() { final guardedValue = map['eventHubAuthorizationRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LogSettingsResponse>(guardedValue, (value) => LogSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      serviceBusRuleId: (() { final guardedValue = map['serviceBusRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

