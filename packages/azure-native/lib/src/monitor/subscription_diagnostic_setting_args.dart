// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_log_settings.dart';

/// {@template pulumi_monitor_subscription_diagnostic_setting_args_doc}
/// The set of arguments for SubscriptionDiagnosticSetting.
/// {@endtemplate}
/// {@macro pulumi_monitor_subscription_diagnostic_setting_args_doc}
class SubscriptionDiagnosticSettingArgs {
  /// The resource Id for the event hub authorization rule.
  final pulumi.Input<String>? eventHubAuthorizationRuleId;
  /// The name of the event hub. If none is specified, the default event hub will be selected.
  final pulumi.Input<String>? eventHubName;
  /// The list of logs settings.
  final pulumi.Input<List<SubscriptionLogSettings>>? logs;
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

  /// Creates a new [SubscriptionDiagnosticSettingArgs].
  /// [eventHubAuthorizationRuleId] The resource Id for the event hub authorization rule.
  /// [eventHubName] The name of the event hub. If none is specified, the default event hub will be selected.
  /// [logs] The list of logs settings.
  /// [marketplacePartnerId] The full ARM resource ID of the Marketplace resource to which you would like to send Diagnostic Logs.
  /// [name] The name of the diagnostic setting.
  /// [serviceBusRuleId] The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility.
  /// [storageAccountId] The resource ID of the storage account to which you would like to send Diagnostic Logs.
  /// [workspaceId] The full ARM resource ID of the Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2
  SubscriptionDiagnosticSettingArgs({
    String? eventHubAuthorizationRuleId,
    String? eventHubName,
    List<SubscriptionLogSettings>? logs,
    String? marketplacePartnerId,
    String? name,
    String? serviceBusRuleId,
    String? storageAccountId,
    String? workspaceId,
  }) :
      eventHubAuthorizationRuleId = pulumi.Input.asOptionalInput<String>(eventHubAuthorizationRuleId),
      eventHubName = pulumi.Input.asOptionalInput<String>(eventHubName),
      logs = pulumi.Input.asOptionalInput<List<SubscriptionLogSettings>>(logs),
      marketplacePartnerId = pulumi.Input.asOptionalInput<String>(marketplacePartnerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      serviceBusRuleId = pulumi.Input.asOptionalInput<String>(serviceBusRuleId),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubAuthorizationRuleId': ?eventHubAuthorizationRuleId,
      'eventHubName': ?eventHubName,
      'logs': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionLogSettings>, List<Map<String, dynamic>>>(logs, (value) => pulumi.Input.encodeList<SubscriptionLogSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'marketplacePartnerId': ?marketplacePartnerId,
      'name': ?name,
      'serviceBusRuleId': ?serviceBusRuleId,
      'storageAccountId': ?storageAccountId,
      'workspaceId': ?workspaceId,
    };
  }

  factory SubscriptionDiagnosticSettingArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionDiagnosticSettingArgs(
      eventHubAuthorizationRuleId: map['eventHubAuthorizationRuleId'] == null ? null : map['eventHubAuthorizationRuleId'] as String,
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      logs: map['logs'] == null ? null : pulumi.Input.decodeList<SubscriptionLogSettings>(map['logs'], (value) => SubscriptionLogSettings.fromMap((value as Map).cast<String, dynamic>())),
      marketplacePartnerId: map['marketplacePartnerId'] == null ? null : map['marketplacePartnerId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      serviceBusRuleId: map['serviceBusRuleId'] == null ? null : map['serviceBusRuleId'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

