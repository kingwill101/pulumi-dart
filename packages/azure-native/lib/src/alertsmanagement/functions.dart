import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_rule_by_name_args.dart';
import 'get_action_rule_by_name_result.dart';
import 'get_alert_processing_rule_by_name_args.dart';
import 'get_alert_processing_rule_by_name_result.dart';
import 'get_issue_args.dart';
import 'get_issue_result.dart';
import 'get_prometheus_rule_group_args.dart';
import 'get_prometheus_rule_group_result.dart';
import 'get_smart_detector_alert_rule_args.dart';
import 'get_smart_detector_alert_rule_result.dart';
import 'list_issue_alerts_args.dart';
import 'list_issue_alerts_result.dart';
import 'list_issue_resources_args.dart';
import 'list_issue_resources_result.dart';

/// Get a specific action rule
///
/// Uses Azure REST API version 2019-05-05-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_get_action_rule_by_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActionRuleByNameResult> getActionRuleByName(
  GetActionRuleByNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:getActionRuleByName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActionRuleByNameResult.fromMap(result);
}

/// Get an alert processing rule by name.
///
/// Uses Azure REST API version 2021-08-08.
///
/// Other available API versions: 2021-08-08-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native alertsmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_get_alert_processing_rule_by_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertProcessingRuleByNameResult> getAlertProcessingRuleByName(
  GetAlertProcessingRuleByNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:getAlertProcessingRuleByName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertProcessingRuleByNameResult.fromMap(result);
}

/// Get issue properties
///
/// Uses Azure REST API version 2025-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_get_issue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIssueResult> getIssue(
  GetIssueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:getIssue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIssueResult.fromMap(result);
}

/// Retrieve a Prometheus rule group definition.
///
/// Uses Azure REST API version 2023-03-01.
///
/// Other available API versions: 2021-07-22-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native alertsmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_get_prometheus_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrometheusRuleGroupResult> getPrometheusRuleGroup(
  GetPrometheusRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:getPrometheusRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrometheusRuleGroupResult.fromMap(result);
}

/// Get a specific Smart Detector alert rule.
///
/// Uses Azure REST API version 2021-04-01.
///
/// Other available API versions: 2019-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native alertsmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_get_smart_detector_alert_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSmartDetectorAlertRuleResult> getSmartDetectorAlertRule(
  GetSmartDetectorAlertRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:getSmartDetectorAlertRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSmartDetectorAlertRuleResult.fromMap(result);
}

/// List all alerts in the issue - this method uses pagination to return all alerts
///
/// Uses Azure REST API version 2025-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_list_issue_alerts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIssueAlertsResult> listIssueAlerts(
  ListIssueAlertsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:listIssueAlerts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIssueAlertsResult.fromMap(result);
}

/// List all resources in the issue - this method uses pagination to return all resources
///
/// Uses Azure REST API version 2025-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_alertsmanagement_list_issue_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIssueResourcesResult> listIssueResources(
  ListIssueResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:alertsmanagement:listIssueResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIssueResourcesResult.fromMap(result);
}
