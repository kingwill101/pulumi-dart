import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_batch_deployment_args.dart';
import 'get_batch_deployment_result.dart';
import 'get_batch_endpoint_args.dart';
import 'get_batch_endpoint_result.dart';
import 'get_capability_host_args.dart';
import 'get_capability_host_result.dart';
import 'get_capacity_reservation_group_args.dart';
import 'get_capacity_reservation_group_result.dart';
import 'get_code_container_args.dart';
import 'get_code_container_result.dart';
import 'get_code_version_args.dart';
import 'get_code_version_result.dart';
import 'get_component_container_args.dart';
import 'get_component_container_result.dart';
import 'get_component_version_args.dart';
import 'get_component_version_result.dart';
import 'get_compute_allowed_resize_sizes_args.dart';
import 'get_compute_allowed_resize_sizes_result.dart';
import 'get_compute_args.dart';
import 'get_compute_result.dart';
import 'get_connection_deployment_args.dart';
import 'get_connection_deployment_result.dart';
import 'get_connection_rai_blocklist_args.dart';
import 'get_connection_rai_blocklist_item_args.dart';
import 'get_connection_rai_blocklist_item_result.dart';
import 'get_connection_rai_blocklist_result.dart';
import 'get_connection_rai_policy_args.dart';
import 'get_connection_rai_policy_result.dart';
import 'get_data_container_args.dart';
import 'get_data_container_result.dart';
import 'get_data_version_args.dart';
import 'get_data_version_result.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';
import 'get_endpoint_deployment_args.dart';
import 'get_endpoint_deployment_result.dart';
import 'get_environment_container_args.dart';
import 'get_environment_container_result.dart';
import 'get_environment_specification_version_args.dart';
import 'get_environment_specification_version_result.dart';
import 'get_environment_version_args.dart';
import 'get_environment_version_result.dart';
import 'get_featureset_container_entity_args.dart';
import 'get_featureset_container_entity_result.dart';
import 'get_featureset_version_args.dart';
import 'get_featureset_version_feature_args.dart';
import 'get_featureset_version_feature_result.dart';
import 'get_featureset_version_result.dart';
import 'get_featurestore_entity_container_entity_args.dart';
import 'get_featurestore_entity_container_entity_result.dart';
import 'get_featurestore_entity_version_args.dart';
import 'get_featurestore_entity_version_result.dart';
import 'get_inference_endpoint_args.dart';
import 'get_inference_endpoint_result.dart';
import 'get_inference_group_args.dart';
import 'get_inference_group_delta_models_status_async_args.dart';
import 'get_inference_group_delta_models_status_async_result.dart';
import 'get_inference_group_result.dart';
import 'get_inference_group_status_args.dart';
import 'get_inference_group_status_result.dart';
import 'get_inference_pool_args.dart';
import 'get_inference_pool_result.dart';
import 'get_inference_pool_status_args.dart';
import 'get_inference_pool_status_result.dart';
import 'get_job_args.dart';
import 'get_job_result.dart';
import 'get_labeling_job_args.dart';
import 'get_labeling_job_result.dart';
import 'get_linked_service_args.dart';
import 'get_linked_service_result.dart';
import 'get_linked_workspace_args.dart';
import 'get_linked_workspace_result.dart';
import 'get_machine_learning_dataset_args.dart';
import 'get_machine_learning_dataset_result.dart';
import 'get_machine_learning_datastore_args.dart';
import 'get_machine_learning_datastore_result.dart';
import 'get_managed_network_settings_rule_args.dart';
import 'get_managed_network_settings_rule_result.dart';
import 'get_marketplace_subscription_args.dart';
import 'get_marketplace_subscription_result.dart';
import 'get_model_container_args.dart';
import 'get_model_container_result.dart';
import 'get_model_version_args.dart';
import 'get_model_version_result.dart';
import 'get_online_deployment_args.dart';
import 'get_online_deployment_logs_args.dart';
import 'get_online_deployment_logs_result.dart';
import 'get_online_deployment_result.dart';
import 'get_online_endpoint_args.dart';
import 'get_online_endpoint_result.dart';
import 'get_online_endpoint_token_args.dart';
import 'get_online_endpoint_token_result.dart';
import 'get_outbound_rule_args.dart';
import 'get_outbound_rule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_rai_policy_args.dart';
import 'get_rai_policy_result.dart';
import 'get_registry_args.dart';
import 'get_registry_code_container_args.dart';
import 'get_registry_code_container_result.dart';
import 'get_registry_code_version_args.dart';
import 'get_registry_code_version_result.dart';
import 'get_registry_component_container_args.dart';
import 'get_registry_component_container_result.dart';
import 'get_registry_component_version_args.dart';
import 'get_registry_component_version_result.dart';
import 'get_registry_data_container_args.dart';
import 'get_registry_data_container_result.dart';
import 'get_registry_data_version_args.dart';
import 'get_registry_data_version_result.dart';
import 'get_registry_environment_container_args.dart';
import 'get_registry_environment_container_result.dart';
import 'get_registry_environment_version_args.dart';
import 'get_registry_environment_version_result.dart';
import 'get_registry_model_container_args.dart';
import 'get_registry_model_container_result.dart';
import 'get_registry_model_version_args.dart';
import 'get_registry_model_version_result.dart';
import 'get_registry_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'get_serverless_endpoint_args.dart';
import 'get_serverless_endpoint_result.dart';
import 'get_serverless_endpoint_status_args.dart';
import 'get_serverless_endpoint_status_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_connection_args.dart';
import 'get_workspace_connection_result.dart';
import 'get_workspace_result.dart';
import 'list_batch_endpoint_keys_args.dart';
import 'list_batch_endpoint_keys_result.dart';
import 'list_compute_keys_args.dart';
import 'list_compute_keys_result.dart';
import 'list_compute_nodes_args.dart';
import 'list_compute_nodes_result.dart';
import 'list_connection_all_models_args.dart';
import 'list_connection_all_models_result.dart';
import 'list_connection_models_args.dart';
import 'list_connection_models_result.dart';
import 'list_datastore_secrets_args.dart';
import 'list_datastore_secrets_result.dart';
import 'list_endpoint_keys_args.dart';
import 'list_endpoint_keys_result.dart';
import 'list_featureset_version_features_args.dart';
import 'list_featureset_version_features_result.dart';
import 'list_featureset_version_materialization_jobs_args.dart';
import 'list_featureset_version_materialization_jobs_result.dart';
import 'list_inference_group_delta_models_async_args.dart';
import 'list_inference_group_delta_models_async_result.dart';
import 'list_online_endpoint_keys_args.dart';
import 'list_online_endpoint_keys_result.dart';
import 'list_serverless_endpoint_keys_args.dart';
import 'list_serverless_endpoint_keys_result.dart';
import 'list_workspace_connection_secrets_args.dart';
import 'list_workspace_connection_secrets_result.dart';
import 'list_workspace_keys_args.dart';
import 'list_workspace_keys_result.dart';
import 'list_workspace_notebook_access_token_args.dart';
import 'list_workspace_notebook_access_token_result.dart';
import 'list_workspace_notebook_keys_args.dart';
import 'list_workspace_notebook_keys_result.dart';
import 'list_workspace_storage_account_keys_args.dart';
import 'list_workspace_storage_account_keys_result.dart';

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_batch_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchDeploymentResult> getBatchDeployment(
  GetBatchDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getBatchDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchDeploymentResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_batch_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchEndpointResult> getBatchEndpoint(
  GetBatchEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getBatchEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchEndpointResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2024-10-01-preview, 2025-01-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_capability_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapabilityHostResult> getCapabilityHost(
  GetCapabilityHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCapabilityHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapabilityHostResult.fromMap(result);
}

/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_capacity_reservation_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityReservationGroupResult> getCapacityReservationGroup(
  GetCapacityReservationGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCapacityReservationGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityReservationGroupResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_code_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCodeContainerResult> getCodeContainer(
  GetCodeContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCodeContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCodeContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_code_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCodeVersionResult> getCodeVersion(
  GetCodeVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCodeVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCodeVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_component_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentContainerResult> getComponentContainer(
  GetComponentContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getComponentContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_component_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentVersionResult> getComponentVersion(
  GetComponentVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getComponentVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentVersionResult.fromMap(result);
}

/// Gets compute definition by its name. Any secrets (storage keys, service credentials, etc) are not returned - use 'keys' nested resource to get them.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_compute_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComputeResult> getCompute(
  GetComputeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCompute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComputeResult.fromMap(result);
}

/// Returns supported virtual machine sizes for resize
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_compute_allowed_resize_sizes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComputeAllowedResizeSizesResult> getComputeAllowedResizeSizes(
  GetComputeAllowedResizeSizesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getComputeAllowedResizeSizes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComputeAllowedResizeSizesResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_connection_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionDeploymentResult> getConnectionDeployment(
  GetConnectionDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionDeploymentResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_connection_rai_blocklist_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionRaiBlocklistResult> getConnectionRaiBlocklist(
  GetConnectionRaiBlocklistArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionRaiBlocklist',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionRaiBlocklistResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_connection_rai_blocklist_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionRaiBlocklistItemResult> getConnectionRaiBlocklistItem(
  GetConnectionRaiBlocklistItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionRaiBlocklistItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionRaiBlocklistItemResult.fromMap(result);
}

/// Azure OpenAI Content Filters resource.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_connection_rai_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionRaiPolicyResult> getConnectionRaiPolicy(
  GetConnectionRaiPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionRaiPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionRaiPolicyResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_data_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataContainerResult> getDataContainer(
  GetDataContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getDataContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_data_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataVersionResult> getDataVersion(
  GetDataVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getDataVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_endpoint_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointDeploymentResult> getEndpointDeployment(
  GetEndpointDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEndpointDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointDeploymentResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_environment_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentContainerResult> getEnvironmentContainer(
  GetEnvironmentContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEnvironmentContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2021-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_environment_specification_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentSpecificationVersionResult>
getEnvironmentSpecificationVersion(
  GetEnvironmentSpecificationVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEnvironmentSpecificationVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentSpecificationVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_environment_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentVersionResult> getEnvironmentVersion(
  GetEnvironmentVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEnvironmentVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_featureset_container_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturesetContainerEntityResult> getFeaturesetContainerEntity(
  GetFeaturesetContainerEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturesetContainerEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturesetContainerEntityResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_featureset_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturesetVersionResult> getFeaturesetVersion(
  GetFeaturesetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturesetVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturesetVersionResult.fromMap(result);
}

/// Dto object representing feature
///
/// Uses Azure REST API version 2023-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_featureset_version_feature_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturesetVersionFeatureResult> getFeaturesetVersionFeature(
  GetFeaturesetVersionFeatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturesetVersionFeature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturesetVersionFeatureResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_featurestore_entity_container_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityContainerEntityResult>
getFeaturestoreEntityContainerEntity(
  GetFeaturestoreEntityContainerEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturestoreEntityContainerEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityContainerEntityResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_featurestore_entity_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityVersionResult> getFeaturestoreEntityVersion(
  GetFeaturestoreEntityVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturestoreEntityVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityVersionResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceEndpointResult> getInferenceEndpoint(
  GetInferenceEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceEndpointResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceGroupResult> getInferenceGroup(
  GetInferenceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceGroupResult.fromMap(result);
}

/// Contract returning to user the delta models.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_group_delta_models_status_async_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceGroupDeltaModelsStatusAsyncResult>
getInferenceGroupDeltaModelsStatusAsync(
  GetInferenceGroupDeltaModelsStatusAsyncArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceGroupDeltaModelsStatusAsync',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceGroupDeltaModelsStatusAsyncResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_group_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceGroupStatusResult> getInferenceGroupStatus(
  GetInferenceGroupStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceGroupStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceGroupStatusResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferencePoolResult> getInferencePool(
  GetInferencePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferencePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferencePoolResult.fromMap(result);
}

/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_pool_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferencePoolStatusResult> getInferencePoolStatus(
  GetInferencePoolStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferencePoolStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferencePoolStatusResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2020-09-01-preview, 2021-03-01-preview, 2022-06-01-preview, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_labeling_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabelingJobResult> getLabelingJob(
  GetLabelingJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getLabelingJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabelingJobResult.fromMap(result);
}

/// Get the detail of a linked service.
///
/// Uses Azure REST API version 2020-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_linked_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedServiceResult> getLinkedService(
  GetLinkedServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getLinkedService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedServiceResult.fromMap(result);
}

/// Get the detail of a linked workspace.
///
/// Uses Azure REST API version 2020-05-15-preview.
///
/// Other available API versions: 2020-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_linked_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedWorkspaceResult> getLinkedWorkspace(
  GetLinkedWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getLinkedWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedWorkspaceResult.fromMap(result);
}

/// Get a Dataset by name.
///
/// Uses Azure REST API version 2020-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_machine_learning_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineLearningDatasetResult> getMachineLearningDataset(
  GetMachineLearningDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getMachineLearningDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineLearningDatasetResult.fromMap(result);
}

/// Get a Datastore by name.
///
/// Uses Azure REST API version 2020-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_machine_learning_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineLearningDatastoreResult> getMachineLearningDatastore(
  GetMachineLearningDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getMachineLearningDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineLearningDatastoreResult.fromMap(result);
}

/// Outbound Rule Basic Resource for the managed network of a machine learning workspace.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_managed_network_settings_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedNetworkSettingsRuleResult> getManagedNetworkSettingsRule(
  GetManagedNetworkSettingsRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getManagedNetworkSettingsRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedNetworkSettingsRuleResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_marketplace_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMarketplaceSubscriptionResult> getMarketplaceSubscription(
  GetMarketplaceSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getMarketplaceSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMarketplaceSubscriptionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_model_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelContainerResult> getModelContainer(
  GetModelContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getModelContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_model_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelVersionResult> getModelVersion(
  GetModelVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getModelVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelVersionResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_online_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOnlineDeploymentResult> getOnlineDeployment(
  GetOnlineDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOnlineDeploymentResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_online_deployment_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOnlineDeploymentLogsResult> getOnlineDeploymentLogs(
  GetOnlineDeploymentLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineDeploymentLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOnlineDeploymentLogsResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_online_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOnlineEndpointResult> getOnlineEndpoint(
  GetOnlineEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOnlineEndpointResult.fromMap(result);
}

/// Service Token
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_online_endpoint_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOnlineEndpointTokenResult> getOnlineEndpointToken(
  GetOnlineEndpointTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineEndpointToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOnlineEndpointTokenResult.fromMap(result);
}

/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_outbound_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutboundRuleResult> getOutboundRule(
  GetOutboundRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOutboundRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutboundRuleResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the workspace.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Azure OpenAI Content Filters resource.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_rai_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiPolicyResult> getRaiPolicy(
  GetRaiPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRaiPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiPolicyResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryResult> getRegistry(
  GetRegistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_code_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryCodeContainerResult> getRegistryCodeContainer(
  GetRegistryCodeContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryCodeContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryCodeContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_code_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryCodeVersionResult> getRegistryCodeVersion(
  GetRegistryCodeVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryCodeVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryCodeVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_component_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryComponentContainerResult> getRegistryComponentContainer(
  GetRegistryComponentContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryComponentContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryComponentContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_component_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryComponentVersionResult> getRegistryComponentVersion(
  GetRegistryComponentVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryComponentVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryComponentVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_data_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryDataContainerResult> getRegistryDataContainer(
  GetRegistryDataContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryDataContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryDataContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_data_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryDataVersionResult> getRegistryDataVersion(
  GetRegistryDataVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryDataVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryDataVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_environment_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEnvironmentContainerResult> getRegistryEnvironmentContainer(
  GetRegistryEnvironmentContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryEnvironmentContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEnvironmentContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_environment_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryEnvironmentVersionResult> getRegistryEnvironmentVersion(
  GetRegistryEnvironmentVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryEnvironmentVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryEnvironmentVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_model_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryModelContainerResult> getRegistryModelContainer(
  GetRegistryModelContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryModelContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryModelContainerResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_registry_model_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryModelVersionResult> getRegistryModelVersion(
  GetRegistryModelVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryModelVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryModelVersionResult.fromMap(result);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_serverless_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessEndpointResult> getServerlessEndpoint(
  GetServerlessEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getServerlessEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessEndpointResult.fromMap(result);
}

/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_serverless_endpoint_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessEndpointStatusResult> getServerlessEndpointStatus(
  GetServerlessEndpointStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getServerlessEndpointStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessEndpointStatusResult.fromMap(result);
}

/// Gets the properties of the specified machine learning workspace.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_workspace_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceConnectionResult> getWorkspaceConnection(
  GetWorkspaceConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getWorkspaceConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceConnectionResult.fromMap(result);
}

/// Keys for endpoint authentication.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_batch_endpoint_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBatchEndpointKeysResult> listBatchEndpointKeys(
  ListBatchEndpointKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listBatchEndpointKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBatchEndpointKeysResult.fromMap(result);
}

/// Gets secrets related to Machine Learning compute (storage keys, service credentials, etc).
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_compute_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListComputeKeysResult> listComputeKeys(
  ListComputeKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listComputeKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListComputeKeysResult.fromMap(result);
}

/// Get the details (e.g IP address, port etc) of all the compute nodes in the compute.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_compute_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<ListComputeNodesResult> listComputeNodes(
  ListComputeNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listComputeNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListComputeNodesResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_connection_all_models_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectionAllModelsResult> listConnectionAllModels(
  ListConnectionAllModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listConnectionAllModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectionAllModelsResult.fromMap(result);
}

/// Uses Azure REST API version 2024-07-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_connection_models_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectionModelsResult> listConnectionModels(
  ListConnectionModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listConnectionModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectionModelsResult.fromMap(result);
}

/// Base definition for datastore secrets.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_datastore_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDatastoreSecretsResult> listDatastoreSecrets(
  ListDatastoreSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listDatastoreSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDatastoreSecretsResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_endpoint_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEndpointKeysResult> listEndpointKeys(
  ListEndpointKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listEndpointKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEndpointKeysResult.fromMap(result);
}

/// A paginated list of Feature entities.
///
/// Uses Azure REST API version 2023-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_featureset_version_features_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFeaturesetVersionFeaturesResult> listFeaturesetVersionFeatures(
  ListFeaturesetVersionFeaturesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listFeaturesetVersionFeatures',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFeaturesetVersionFeaturesResult.fromMap(result);
}

/// A paginated list of FeaturesetJob entities.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_featureset_version_materialization_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFeaturesetVersionMaterializationJobsResult>
listFeaturesetVersionMaterializationJobs(
  ListFeaturesetVersionMaterializationJobsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listFeaturesetVersionMaterializationJobs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFeaturesetVersionMaterializationJobsResult.fromMap(result);
}

/// A paginated list of String entities.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_inference_group_delta_models_async_args_doc}
/// [options] Invoke options controlling this call.
Future<ListInferenceGroupDeltaModelsAsyncResult>
listInferenceGroupDeltaModelsAsync(
  ListInferenceGroupDeltaModelsAsyncArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listInferenceGroupDeltaModelsAsync',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListInferenceGroupDeltaModelsAsyncResult.fromMap(result);
}

/// Keys for endpoint authentication.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_online_endpoint_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListOnlineEndpointKeysResult> listOnlineEndpointKeys(
  ListOnlineEndpointKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listOnlineEndpointKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListOnlineEndpointKeysResult.fromMap(result);
}

/// Keys for endpoint authentication.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_serverless_endpoint_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListServerlessEndpointKeysResult> listServerlessEndpointKeys(
  ListServerlessEndpointKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listServerlessEndpointKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListServerlessEndpointKeysResult.fromMap(result);
}

/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_workspace_connection_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceConnectionSecretsResult> listWorkspaceConnectionSecrets(
  ListWorkspaceConnectionSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceConnectionSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceConnectionSecretsResult.fromMap(result);
}

/// Lists all the keys associated with this workspace. This includes keys for the storage account, app insights and password for container registry
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_workspace_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceKeysResult> listWorkspaceKeys(
  ListWorkspaceKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceKeysResult.fromMap(result);
}

/// return notebook access token and refresh token
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_workspace_notebook_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceNotebookAccessTokenResult> listWorkspaceNotebookAccessToken(
  ListWorkspaceNotebookAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceNotebookAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceNotebookAccessTokenResult.fromMap(result);
}

/// List keys of a notebook.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_workspace_notebook_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceNotebookKeysResult> listWorkspaceNotebookKeys(
  ListWorkspaceNotebookKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceNotebookKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceNotebookKeysResult.fromMap(result);
}

/// List storage account keys of a workspace.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_workspace_storage_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListWorkspaceStorageAccountKeysResult> listWorkspaceStorageAccountKeys(
  ListWorkspaceStorageAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceStorageAccountKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListWorkspaceStorageAccountKeysResult.fromMap(result);
}
