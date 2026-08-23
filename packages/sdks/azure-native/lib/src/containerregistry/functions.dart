import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';
import 'get_archife_args.dart';
import 'get_archife_result.dart';
import 'get_archive_version_args.dart';
import 'get_archive_version_result.dart';
import 'get_cache_rule_args.dart';
import 'get_cache_rule_result.dart';
import 'get_connected_registry_args.dart';
import 'get_connected_registry_result.dart';
import 'get_credential_set_args.dart';
import 'get_credential_set_result.dart';
import 'get_export_pipeline_args.dart';
import 'get_export_pipeline_result.dart';
import 'get_import_pipeline_args.dart';
import 'get_import_pipeline_result.dart';
import 'get_pipeline_run_args.dart';
import 'get_pipeline_run_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_registry_args.dart';
import 'get_registry_result.dart';
import 'get_replication_args.dart';
import 'get_replication_result.dart';
import 'get_scope_map_args.dart';
import 'get_scope_map_result.dart';
import 'get_task_args.dart';
import 'get_task_result.dart';
import 'get_task_run_args.dart';
import 'get_task_run_result.dart';
import 'get_token_args.dart';
import 'get_token_result.dart';
import 'get_webhook_args.dart';
import 'get_webhook_callback_config_args.dart';
import 'get_webhook_callback_config_result.dart';
import 'get_webhook_result.dart';
import 'list_agent_pool_queue_status_args.dart';
import 'list_agent_pool_queue_status_result.dart';
import 'list_registry_build_source_upload_url_args.dart';
import 'list_registry_build_source_upload_url_result.dart';
import 'list_registry_credentials_args.dart';
import 'list_registry_credentials_result.dart';
import 'list_run_log_sas_url_args.dart';
import 'list_run_log_sas_url_result.dart';
import 'list_task_details_args.dart';
import 'list_task_details_result.dart';
import 'list_task_run_details_args.dart';
import 'list_task_run_details_result.dart';
import 'list_webhook_events_args.dart';
import 'list_webhook_events_result.dart';

/// Gets the detailed information for a given agent pool.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_agent_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentPoolResult> getAgentPool(
  GetAgentPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getAgentPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentPoolResult.fromMap(result);
}

/// Gets the properties of the archive.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_archife_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArchifeResult> getArchife(
  GetArchifeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getArchife',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArchifeResult.fromMap(result);
}

/// Gets the properties of the archive version.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_archive_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArchiveVersionResult> getArchiveVersion(
  GetArchiveVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getArchiveVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArchiveVersionResult.fromMap(result);
}

/// Gets the properties of the specified cache rule resource.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_cache_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCacheRuleResult> getCacheRule(
  GetCacheRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getCacheRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCacheRuleResult.fromMap(result);
}

/// Gets the properties of the connected registry.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-01-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_connected_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedRegistryResult> getConnectedRegistry(
  GetConnectedRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getConnectedRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectedRegistryResult.fromMap(result);
}

/// Gets the properties of the specified credential set resource.
///
/// Uses Azure REST API version 2023-01-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_credential_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCredentialSetResult> getCredentialSet(
  GetCredentialSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getCredentialSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialSetResult.fromMap(result);
}

/// Gets the properties of the export pipeline.
///
/// Uses Azure REST API version 2023-01-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_export_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportPipelineResult> getExportPipeline(
  GetExportPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getExportPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportPipelineResult.fromMap(result);
}

/// Gets the properties of the import pipeline.
///
/// Uses Azure REST API version 2023-01-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_import_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportPipelineResult> getImportPipeline(
  GetImportPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getImportPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportPipelineResult.fromMap(result);
}

/// Gets the detailed information for a given pipeline run.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-01-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_pipeline_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineRunResult> getPipelineRun(
  GetPipelineRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getPipelineRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineRunResult.fromMap(result);
}

/// Get the specified private endpoint connection associated with the container registry.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the properties of the specified container registry.
///
/// Uses Azure REST API version 2023-01-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

/// Gets the properties of the specified replication.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_replication_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationResult> getReplication(
  GetReplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getReplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationResult.fromMap(result);
}

/// Gets the properties of the specified scope map.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_scope_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeMapResult> getScopeMap(
  GetScopeMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getScopeMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeMapResult.fromMap(result);
}

/// Get the properties of a specified task.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskResult> getTask(
  GetTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskResult.fromMap(result);
}

/// Gets the detailed information for a given task run.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_task_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskRunResult> getTaskRun(
  GetTaskRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getTaskRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskRunResult.fromMap(result);
}

/// Gets the properties of the specified token.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTokenResult> getToken(
  GetTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTokenResult.fromMap(result);
}

/// Gets the properties of the specified webhook.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_webhook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebhookResult> getWebhook(
  GetWebhookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult.fromMap(result);
}

/// Gets the configuration of service URI and custom headers for the webhook.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_get_webhook_callback_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebhookCallbackConfigResult> getWebhookCallbackConfig(
  GetWebhookCallbackConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:getWebhookCallbackConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookCallbackConfigResult.fromMap(result);
}

/// Gets the count of queued runs for a given agent pool.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_agent_pool_queue_status_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgentPoolQueueStatusResult> listAgentPoolQueueStatus(
  ListAgentPoolQueueStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listAgentPoolQueueStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgentPoolQueueStatusResult.fromMap(result);
}

/// Get the upload location for the user to be able to upload the source.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_registry_build_source_upload_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRegistryBuildSourceUploadUrlResult> listRegistryBuildSourceUploadUrl(
  ListRegistryBuildSourceUploadUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listRegistryBuildSourceUploadUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRegistryBuildSourceUploadUrlResult.fromMap(result);
}

/// Lists the login credentials for the specified container registry.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_registry_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRegistryCredentialsResult> listRegistryCredentials(
  ListRegistryCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listRegistryCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRegistryCredentialsResult.fromMap(result);
}

/// Gets a link to download the run logs.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_run_log_sas_url_args_doc}
/// [options] Invoke options controlling this call.
Future<ListRunLogSasUrlResult> listRunLogSasUrl(
  ListRunLogSasUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listRunLogSasUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListRunLogSasUrlResult.fromMap(result);
}

/// Returns a task with extended information that includes all secrets.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_task_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListTaskDetailsResult> listTaskDetails(
  ListTaskDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listTaskDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListTaskDetailsResult.fromMap(result);
}

/// Gets the detailed information for a given task run that includes all secrets.
///
/// Uses Azure REST API version 2019-06-01-preview.
///
/// Other available API versions: 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_task_run_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListTaskRunDetailsResult> listTaskRunDetails(
  ListTaskRunDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listTaskRunDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListTaskRunDetailsResult.fromMap(result);
}

/// Lists recent events for the specified webhook.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerregistry_list_webhook_events_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWebhookEventsResult> listWebhookEvents(
  ListWebhookEventsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerregistry:listWebhookEvents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWebhookEventsResult.fromMap(result);
}
