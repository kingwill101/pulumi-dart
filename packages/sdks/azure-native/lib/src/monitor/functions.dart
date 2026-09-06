import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_group_args.dart';
import 'get_action_group_result.dart';
import 'get_activity_log_alert_args.dart';
import 'get_activity_log_alert_result.dart';
import 'get_authentication_setting_args.dart';
import 'get_authentication_setting_result.dart';
import 'get_autoscale_setting_args.dart';
import 'get_autoscale_setting_result.dart';
import 'get_azure_monitor_workspace_args.dart';
import 'get_azure_monitor_workspace_result.dart';
import 'get_data_collection_endpoint_args.dart';
import 'get_data_collection_endpoint_result.dart';
import 'get_data_collection_rule_args.dart';
import 'get_data_collection_rule_association_args.dart';
import 'get_data_collection_rule_association_result.dart';
import 'get_data_collection_rule_result.dart';
import 'get_diagnostic_setting_args.dart';
import 'get_diagnostic_setting_result.dart';
import 'get_discovery_rule_args.dart';
import 'get_discovery_rule_result.dart';
import 'get_entity_args.dart';
import 'get_entity_result.dart';
import 'get_health_model_args.dart';
import 'get_health_model_result.dart';
import 'get_issue_args.dart';
import 'get_issue_result.dart';
import 'get_management_group_diagnostic_setting_args.dart';
import 'get_management_group_diagnostic_setting_result.dart';
import 'get_metric_alert_args.dart';
import 'get_metric_alert_result.dart';
import 'get_pipeline_group_args.dart';
import 'get_pipeline_group_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_private_link_scope_args.dart';
import 'get_private_link_scope_result.dart';
import 'get_private_link_scoped_resource_args.dart';
import 'get_private_link_scoped_resource_result.dart';
import 'get_relationship_args.dart';
import 'get_relationship_result.dart';
import 'get_scheduled_query_rule_args.dart';
import 'get_scheduled_query_rule_result.dart';
import 'get_signal_definition_args.dart';
import 'get_signal_definition_result.dart';
import 'get_sli_args.dart';
import 'get_sli_result.dart';
import 'get_subscription_diagnostic_setting_args.dart';
import 'get_subscription_diagnostic_setting_result.dart';
import 'get_tenant_action_group_args.dart';
import 'get_tenant_action_group_result.dart';
import 'list_diagnostic_settings_category_args.dart';
import 'list_diagnostic_settings_category_result.dart';
import 'list_issue_alerts_args.dart';
import 'list_issue_alerts_result.dart';
import 'list_issue_resources_args.dart';
import 'list_issue_resources_result.dart';

/// Get an action group.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2018-03-01, 2022-06-01, 2023-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_action_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActionGroupResult> getActionGroup(
  GetActionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getActionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActionGroupResult.fromMap(result);
}

pulumi.Output<GetActionGroupResult> getActionGroupOutput(
  GetActionGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getActionGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActionGroupResult.fromMap);
}

/// Get an Activity Log Alert rule.
///
/// Uses Azure REST API version 2020-10-01.
///
/// Other available API versions: 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_activity_log_alert_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActivityLogAlertResult> getActivityLogAlert(
  GetActivityLogAlertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getActivityLogAlert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActivityLogAlertResult.fromMap(result);
}

pulumi.Output<GetActivityLogAlertResult> getActivityLogAlertOutput(
  GetActivityLogAlertArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getActivityLogAlert',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActivityLogAlertResult.fromMap);
}

/// Get a AuthenticationSetting
///
/// Uses Azure REST API version 2025-05-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_authentication_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthenticationSettingResult> getAuthenticationSetting(
  GetAuthenticationSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getAuthenticationSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthenticationSettingResult.fromMap(result);
}

pulumi.Output<GetAuthenticationSettingResult> getAuthenticationSettingOutput(
  GetAuthenticationSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getAuthenticationSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthenticationSettingResult.fromMap);
}

/// Gets an autoscale setting
///
/// Uses Azure REST API version 2021-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_autoscale_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscaleSettingResult> getAutoscaleSetting(
  GetAutoscaleSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getAutoscaleSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscaleSettingResult.fromMap(result);
}

pulumi.Output<GetAutoscaleSettingResult> getAutoscaleSettingOutput(
  GetAutoscaleSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getAutoscaleSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoscaleSettingResult.fromMap);
}

/// Returns the specified Azure Monitor Workspace
///
/// Uses Azure REST API version 2023-04-03.
///
/// Other available API versions: 2023-10-01-preview, 2025-05-03-preview, 2025-10-03, 2025-10-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_azure_monitor_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureMonitorWorkspaceResult> getAzureMonitorWorkspace(
  GetAzureMonitorWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getAzureMonitorWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureMonitorWorkspaceResult.fromMap(result);
}

pulumi.Output<GetAzureMonitorWorkspaceResult> getAzureMonitorWorkspaceOutput(
  GetAzureMonitorWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getAzureMonitorWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureMonitorWorkspaceResult.fromMap);
}

/// Definition of ARM tracked top level resource.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2024-03-11. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_data_collection_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectionEndpointResult> getDataCollectionEndpoint(
  GetDataCollectionEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getDataCollectionEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectionEndpointResult.fromMap(result);
}

pulumi.Output<GetDataCollectionEndpointResult> getDataCollectionEndpointOutput(
  GetDataCollectionEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getDataCollectionEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataCollectionEndpointResult.fromMap);
}

/// Definition of ARM tracked top level resource.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2024-03-11. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_data_collection_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectionRuleResult> getDataCollectionRule(
  GetDataCollectionRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getDataCollectionRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectionRuleResult.fromMap(result);
}

pulumi.Output<GetDataCollectionRuleResult> getDataCollectionRuleOutput(
  GetDataCollectionRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getDataCollectionRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataCollectionRuleResult.fromMap);
}

/// Definition of generic ARM proxy resource.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2024-03-11. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_data_collection_rule_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectionRuleAssociationResult> getDataCollectionRuleAssociation(
  GetDataCollectionRuleAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getDataCollectionRuleAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectionRuleAssociationResult.fromMap(result);
}

pulumi.Output<GetDataCollectionRuleAssociationResult> getDataCollectionRuleAssociationOutput(
  GetDataCollectionRuleAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getDataCollectionRuleAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataCollectionRuleAssociationResult.fromMap);
}

/// Gets the active diagnostic settings for the specified resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_diagnostic_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiagnosticSettingResult> getDiagnosticSetting(
  GetDiagnosticSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getDiagnosticSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiagnosticSettingResult.fromMap(result);
}

pulumi.Output<GetDiagnosticSettingResult> getDiagnosticSettingOutput(
  GetDiagnosticSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getDiagnosticSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiagnosticSettingResult.fromMap);
}

/// Get a DiscoveryRule
///
/// Uses Azure REST API version 2025-05-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_discovery_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveryRuleResult> getDiscoveryRule(
  GetDiscoveryRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getDiscoveryRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveryRuleResult.fromMap(result);
}

pulumi.Output<GetDiscoveryRuleResult> getDiscoveryRuleOutput(
  GetDiscoveryRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getDiscoveryRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiscoveryRuleResult.fromMap);
}

/// Get a Entity
///
/// Uses Azure REST API version 2025-05-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}

pulumi.Output<GetEntityResult> getEntityOutput(
  GetEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityResult.fromMap);
}

/// Get a HealthModel
///
/// Uses Azure REST API version 2025-05-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_health_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthModelResult> getHealthModel(
  GetHealthModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getHealthModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthModelResult.fromMap(result);
}

pulumi.Output<GetHealthModelResult> getHealthModelOutput(
  GetHealthModelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getHealthModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHealthModelResult.fromMap);
}

/// Get issue properties
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// Other available API versions: 2025-10-03, 2025-10-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_issue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIssueResult> getIssue(
  GetIssueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getIssue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIssueResult.fromMap(result);
}

pulumi.Output<GetIssueResult> getIssueOutput(
  GetIssueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getIssue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIssueResult.fromMap);
}

/// Gets the active management group diagnostic settings for the specified resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_management_group_diagnostic_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementGroupDiagnosticSettingResult> getManagementGroupDiagnosticSetting(
  GetManagementGroupDiagnosticSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getManagementGroupDiagnosticSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementGroupDiagnosticSettingResult.fromMap(result);
}

pulumi.Output<GetManagementGroupDiagnosticSettingResult> getManagementGroupDiagnosticSettingOutput(
  GetManagementGroupDiagnosticSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getManagementGroupDiagnosticSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementGroupDiagnosticSettingResult.fromMap);
}

/// Retrieve an alert rule definition.
///
/// Uses Azure REST API version 2018-03-01.
///
/// Other available API versions: 2024-03-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_metric_alert_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMetricAlertResult> getMetricAlert(
  GetMetricAlertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getMetricAlert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricAlertResult.fromMap(result);
}

pulumi.Output<GetMetricAlertResult> getMetricAlertOutput(
  GetMetricAlertArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getMetricAlert',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMetricAlertResult.fromMap);
}

/// Returns the specific pipeline group instance.
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2023-10-01-preview, 2025-03-01-preview, 2026-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_pipeline_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineGroupResult> getPipelineGroup(
  GetPipelineGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getPipelineGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineGroupResult.fromMap(result);
}

pulumi.Output<GetPipelineGroupResult> getPipelineGroupOutput(
  GetPipelineGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getPipelineGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPipelineGroupResult.fromMap);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2021-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Returns a Azure Monitor PrivateLinkScope.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2021-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_private_link_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkScopeResult> getPrivateLinkScope(
  GetPrivateLinkScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getPrivateLinkScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkScopeResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkScopeResult> getPrivateLinkScopeOutput(
  GetPrivateLinkScopeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getPrivateLinkScope',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkScopeResult.fromMap);
}

/// Gets a scoped resource in a private link scope.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2021-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_private_link_scoped_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkScopedResourceResult> getPrivateLinkScopedResource(
  GetPrivateLinkScopedResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getPrivateLinkScopedResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkScopedResourceResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkScopedResourceResult> getPrivateLinkScopedResourceOutput(
  GetPrivateLinkScopedResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getPrivateLinkScopedResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkScopedResourceResult.fromMap);
}

/// Get a Relationship
///
/// Uses Azure REST API version 2025-05-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_relationship_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRelationshipResult> getRelationship(
  GetRelationshipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getRelationship',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRelationshipResult.fromMap(result);
}

pulumi.Output<GetRelationshipResult> getRelationshipOutput(
  GetRelationshipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getRelationship',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRelationshipResult.fromMap);
}

/// Retrieve an scheduled query rule definition.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-12-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_scheduled_query_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledQueryRuleResult> getScheduledQueryRule(
  GetScheduledQueryRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getScheduledQueryRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledQueryRuleResult.fromMap(result);
}

pulumi.Output<GetScheduledQueryRuleResult> getScheduledQueryRuleOutput(
  GetScheduledQueryRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getScheduledQueryRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduledQueryRuleResult.fromMap);
}

/// Get a SignalDefinition
///
/// Uses Azure REST API version 2025-05-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_signal_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalDefinitionResult> getSignalDefinition(
  GetSignalDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getSignalDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalDefinitionResult.fromMap(result);
}

pulumi.Output<GetSignalDefinitionResult> getSignalDefinitionOutput(
  GetSignalDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getSignalDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSignalDefinitionResult.fromMap);
}

/// Gets an SLI resource.
///
/// Uses Azure REST API version 2025-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_sli_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSliResult> getSli(
  GetSliArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getSli',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSliResult.fromMap(result);
}

pulumi.Output<GetSliResult> getSliOutput(
  GetSliArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getSli',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSliResult.fromMap);
}

/// Gets the active subscription diagnostic settings for the specified resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_subscription_diagnostic_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionDiagnosticSettingResult> getSubscriptionDiagnosticSetting(
  GetSubscriptionDiagnosticSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getSubscriptionDiagnosticSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionDiagnosticSettingResult.fromMap(result);
}

pulumi.Output<GetSubscriptionDiagnosticSettingResult> getSubscriptionDiagnosticSettingOutput(
  GetSubscriptionDiagnosticSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getSubscriptionDiagnosticSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionDiagnosticSettingResult.fromMap);
}

/// Get a tenant action group.
///
/// Uses Azure REST API version 2023-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_get_tenant_action_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTenantActionGroupResult> getTenantActionGroup(
  GetTenantActionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:getTenantActionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantActionGroupResult.fromMap(result);
}

pulumi.Output<GetTenantActionGroupResult> getTenantActionGroupOutput(
  GetTenantActionGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:getTenantActionGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTenantActionGroupResult.fromMap);
}

/// Lists the diagnostic settings categories for the specified resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_list_diagnostic_settings_category_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDiagnosticSettingsCategoryResult> listDiagnosticSettingsCategory(
  ListDiagnosticSettingsCategoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:listDiagnosticSettingsCategory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDiagnosticSettingsCategoryResult.fromMap(result);
}

pulumi.Output<ListDiagnosticSettingsCategoryResult> listDiagnosticSettingsCategoryOutput(
  ListDiagnosticSettingsCategoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:listDiagnosticSettingsCategory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDiagnosticSettingsCategoryResult.fromMap);
}

/// List all alerts in the issue - this method uses pagination to return all alerts
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// Other available API versions: 2025-10-03, 2025-10-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_list_issue_alerts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIssueAlertsResult> listIssueAlerts(
  ListIssueAlertsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:listIssueAlerts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIssueAlertsResult.fromMap(result);
}

pulumi.Output<ListIssueAlertsResult> listIssueAlertsOutput(
  ListIssueAlertsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:listIssueAlerts',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIssueAlertsResult.fromMap);
}

/// List all resources in the issue - this method uses pagination to return all resources
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// Other available API versions: 2025-10-03, 2025-10-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_monitor_list_issue_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIssueResourcesResult> listIssueResources(
  ListIssueResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:monitor:listIssueResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIssueResourcesResult.fromMap(result);
}

pulumi.Output<ListIssueResourcesResult> listIssueResourcesOutput(
  ListIssueResourcesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:monitor:listIssueResources',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIssueResourcesResult.fromMap);
}
