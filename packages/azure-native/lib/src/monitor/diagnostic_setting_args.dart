// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_settings.dart';
import 'metric_settings.dart';

/// {@template pulumi_monitor_diagnostic_setting_args_doc}
/// The set of arguments for DiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_diagnostic_setting_args_doc}
class DiagnosticSettingArgs {
  /// The resource Id for the event hub authorization rule.
  final pulumi.Input<String>? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final pulumi.Input<String>? eventHubName;
  /// A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: <normalized service identity>_<normalized category name>. Possible values are: Dedicated and null (null is default.)
  final pulumi.Input<String>? logAnalyticsDestinationType;
  /// The list of logs settings.
  final pulumi.Input<List<LogSettings>>? logs;
  /// The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  final pulumi.Input<String>? marketplacePartnerId;
  /// The list of metric settings.
  final pulumi.Input<List<MetricSettings>>? metrics;
  /// The name of the diagnostic setting.
  final pulumi.Input<String>? name;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  final pulumi.Input<String>? serviceBusRuleId;
  /// The resource ID of the storage account to which you would like to send Diagnostic Logs.
  final pulumi.Input<String>? storageAccountId;
  /// The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [DiagnosticSettingArgs].
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [logAnalyticsDestinationType] A string indicating whether the export to Log Analytics should use the default destination type, i.e. AzureDiagnostics, or use a destination type constructed as follows: <normalized service identity>_<normalized category name>. Possible values are: Dedicated and null (null is default.)
  /// [logs] The list of logs settings.
  /// [marketplacePartnerId] The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  /// [metrics] The list of metric settings.
  /// [name] The name of the diagnostic setting.
  /// [resourceUri] The identifier of the resource.
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [workspaceId] The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  DiagnosticSettingArgs({
    String? eventHubAuthorizationRuleId,
    String? eventHubName,
    String? logAnalyticsDestinationType,
    List<LogSettings>? logs,
    String? marketplacePartnerId,
    List<MetricSettings>? metrics,
    String? name,
    required String resourceUri,
    String? serviceBusRuleId,
    String? storageAccountId,
    String? workspaceId,
  }) :
      eventHubAuthorizationRuleId = pulumi.Input.asOptionalInput<String>(eventHubAuthorizationRuleId),
      eventHubName = pulumi.Input.asOptionalInput<String>(eventHubName),
      logAnalyticsDestinationType = pulumi.Input.asOptionalInput<String>(logAnalyticsDestinationType),
      logs = pulumi.Input.asOptionalInput<List<LogSettings>>(logs),
      marketplacePartnerId = pulumi.Input.asOptionalInput<String>(marketplacePartnerId),
      metrics = pulumi.Input.asOptionalInput<List<MetricSettings>>(metrics),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      serviceBusRuleId = pulumi.Input.asOptionalInput<String>(serviceBusRuleId),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'logAnalyticsDestinationType': ?logAnalyticsDestinationType,
      'logs': ?pulumi.Input.mapOptionalInputValue<List<LogSettings>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<LogSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'marketplacePartnerId': ?marketplacePartnerId,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<MetricSettings>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<MetricSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceUri': resourceUri,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'workspaceId': ?workspaceId,
    };
  }

  factory DiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingArgs(
      eventHubAuthorizationRuleId: map['eventHubAuthorizationRuleId'] == null ? null : map['eventHubAuthorizationRuleId'] as String,
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      logAnalyticsDestinationType: map['logAnalyticsDestinationType'] == null ? null : map['logAnalyticsDestinationType'] as String,
      logs: map['logs'] == null ? null : pulumi.Input.decodeList<LogSettings>(map['logs'], (value) => LogSettings.fromMap((value as Map).cast<String, dynamic>())),
      marketplacePartnerId: map['marketplacePartnerId'] == null ? null : map['marketplacePartnerId'] as String,
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<MetricSettings>(map['metrics'], (value) => MetricSettings.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      resourceUri: map['resourceUri'] as String,
      serviceBusRuleId: map['serviceBusRuleId'] == null ? null : map['serviceBusRuleId'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

