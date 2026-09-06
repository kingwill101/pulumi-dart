// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_settings.dart';

/// {@template pulumi_aadiam_diagnostic_setting_args_doc}
/// The set of arguments for DiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_aadiam_diagnostic_setting_args_doc}
class DiagnosticSettingArgs {
  /// The resource Id for the event hub authorization rule.
  final pulumi.Input<String?>? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final pulumi.Input<String?>? eventHubName;
  /// The list of logs settings.
  final pulumi.Input<List<LogSettings>?>? logs;
  /// The name of the diagnostic setting.
  final pulumi.Input<String?>? name;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final pulumi.Input<String?>? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final pulumi.Input<String?>? storageAccountId;
  /// The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [DiagnosticSettingArgs].
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [logs] The list of logs settings.
  /// [name] The name of the diagnostic setting.
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [workspaceId] The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  const DiagnosticSettingArgs({
    this.eventHubAuthorizationRuleId,
    this.eventHubName,
    this.logs,
    this.name,
    this.serviceBusRuleId,
    this.storageAccountId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'logs': ?pulumi.Input.mapOptionalInputValue<List<LogSettings>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<LogSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'workspaceId': ?workspaceId,
    };
  }

  factory DiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingArgs(
      eventHubAuthorizationRuleId: (() { final guardedValue = map['eventHubAuthorizationRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogSettings>(guardedValue, (value) => LogSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusRuleId: (() { final guardedValue = map['serviceBusRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
