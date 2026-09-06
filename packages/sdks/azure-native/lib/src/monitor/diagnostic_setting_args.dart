// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostics_log_settings.dart';
import 'diagnostics_metric_settings.dart';

/// {@template pulumi_monitor_diagnostic_setting_args_doc}
/// The set of arguments for DiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_diagnostic_setting_args_doc}
class DiagnosticSettingArgs {
  /// The resource Id for the event hub authorization rule.
  final pulumi.Input<String?>? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final pulumi.Input<String?>? eventHubName;
  /// A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: &lt;normalized service identity&gt;_&lt;normalized category name&gt;. Possible values are: Dedicated and null (null is default.)
  final pulumi.Input<String?>? logAnalyticsDestinationType;
  /// The list of logs settings.
  final pulumi.Input<List<DiagnosticsLogSettings>?>? logs;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  final pulumi.Input<String?>? marketplacePartnerId;
  /// The list of metric settings.
  final pulumi.Input<List<DiagnosticsMetricSettings>?>? metrics;
  /// The name of the diagnostic setting.
  final pulumi.Input<String?>? name;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final pulumi.Input<String?>? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final pulumi.Input<String?>? storageAccountId;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [DiagnosticSettingArgs].
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [logAnalyticsDestinationType] A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: &lt;normalized service identity&gt;_&lt;normalized category name&gt;. Possible values are: Dedicated and null (null is default.)
  /// [logs] The list of logs settings.
  /// [marketplacePartnerId] The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  /// [metrics] The list of metric settings.
  /// [name] The name of the diagnostic setting.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [workspaceId] The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  const DiagnosticSettingArgs({
    this.eventHubAuthorizationRuleId,
    this.eventHubName,
    this.logAnalyticsDestinationType,
    this.logs,
    this.marketplacePartnerId,
    this.metrics,
    this.name,
    required this.resourceUri,
    this.serviceBusRuleId,
    this.storageAccountId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'logAnalyticsDestinationType': ?logAnalyticsDestinationType,
      'logs': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticsLogSettings>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<DiagnosticsLogSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'marketplacePartnerId': ?marketplacePartnerId,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticsMetricSettings>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<DiagnosticsMetricSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceUri': resourceUri,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'workspaceId': ?workspaceId,
    };
  }

  factory DiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingArgs(
      eventHubAuthorizationRuleId: (() { final guardedValue = map['eventHubAuthorizationRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubName: (() { final guardedValue = map['eventHubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsDestinationType: (() { final guardedValue = map['logAnalyticsDestinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiagnosticsLogSettings>(guardedValue, (value) => DiagnosticsLogSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      marketplacePartnerId: (() { final guardedValue = map['marketplacePartnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiagnosticsMetricSettings>(guardedValue, (value) => DiagnosticsMetricSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      serviceBusRuleId: (() { final guardedValue = map['serviceBusRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
