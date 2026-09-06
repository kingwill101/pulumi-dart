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

/// Gets a batch inference deployment by id.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetBatchDeploymentResult> getBatchDeploymentOutput(
  GetBatchDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getBatchDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBatchDeploymentResult.fromMap);
}

/// Gets a batch inference endpoint by name.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetBatchEndpointResult> getBatchEndpointOutput(
  GetBatchEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getBatchEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBatchEndpointResult.fromMap);
}

/// Get capabilityHost.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2024-10-01-preview, 2025-01-01-preview, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCapabilityHostResult> getCapabilityHostOutput(
  GetCapabilityHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCapabilityHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCapabilityHostResult.fromMap);
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

pulumi.Output<GetCapacityReservationGroupResult> getCapacityReservationGroupOutput(
  GetCapacityReservationGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCapacityReservationGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCapacityReservationGroupResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCodeContainerResult> getCodeContainerOutput(
  GetCodeContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCodeContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCodeContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetCodeVersionResult> getCodeVersionOutput(
  GetCodeVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCodeVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCodeVersionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetComponentContainerResult> getComponentContainerOutput(
  GetComponentContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getComponentContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetComponentContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetComponentVersionResult> getComponentVersionOutput(
  GetComponentVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getComponentVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetComponentVersionResult.fromMap);
}

/// Gets compute definition by its name. Any secrets (storage keys, service credentials, etc) are not returned - use 'keys' nested resource to get them.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetComputeResult> getComputeOutput(
  GetComputeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getCompute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetComputeResult.fromMap);
}

/// Returns supported virtual machine sizes for resize
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetComputeAllowedResizeSizesResult> getComputeAllowedResizeSizesOutput(
  GetComputeAllowedResizeSizesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getComputeAllowedResizeSizes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetComputeAllowedResizeSizesResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetConnectionDeploymentResult> getConnectionDeploymentOutput(
  GetConnectionDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionDeploymentResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetConnectionRaiBlocklistResult> getConnectionRaiBlocklistOutput(
  GetConnectionRaiBlocklistArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionRaiBlocklist',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionRaiBlocklistResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetConnectionRaiBlocklistItemResult> getConnectionRaiBlocklistItemOutput(
  GetConnectionRaiBlocklistItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionRaiBlocklistItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionRaiBlocklistItemResult.fromMap);
}

/// Azure OpenAI Content Filters resource.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetConnectionRaiPolicyResult> getConnectionRaiPolicyOutput(
  GetConnectionRaiPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getConnectionRaiPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionRaiPolicyResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetDataContainerResult> getDataContainerOutput(
  GetDataContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getDataContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetDataVersionResult> getDataVersionOutput(
  GetDataVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getDataVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataVersionResult.fromMap);
}

/// Get datastore.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetDatastoreResult> getDatastoreOutput(
  GetDatastoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getDatastore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatastoreResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetEndpointDeploymentResult> getEndpointDeploymentOutput(
  GetEndpointDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEndpointDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointDeploymentResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetEnvironmentContainerResult> getEnvironmentContainerOutput(
  GetEnvironmentContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEnvironmentContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentContainerResult.fromMap);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2021-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_environment_specification_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentSpecificationVersionResult> getEnvironmentSpecificationVersion(
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

pulumi.Output<GetEnvironmentSpecificationVersionResult> getEnvironmentSpecificationVersionOutput(
  GetEnvironmentSpecificationVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEnvironmentSpecificationVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentSpecificationVersionResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetEnvironmentVersionResult> getEnvironmentVersionOutput(
  GetEnvironmentVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getEnvironmentVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnvironmentVersionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFeaturesetContainerEntityResult> getFeaturesetContainerEntityOutput(
  GetFeaturesetContainerEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturesetContainerEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturesetContainerEntityResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFeaturesetVersionResult> getFeaturesetVersionOutput(
  GetFeaturesetVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturesetVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturesetVersionResult.fromMap);
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

pulumi.Output<GetFeaturesetVersionFeatureResult> getFeaturesetVersionFeatureOutput(
  GetFeaturesetVersionFeatureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturesetVersionFeature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturesetVersionFeatureResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_featurestore_entity_container_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFeaturestoreEntityContainerEntityResult> getFeaturestoreEntityContainerEntity(
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

pulumi.Output<GetFeaturestoreEntityContainerEntityResult> getFeaturestoreEntityContainerEntityOutput(
  GetFeaturestoreEntityContainerEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturestoreEntityContainerEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreEntityContainerEntityResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetFeaturestoreEntityVersionResult> getFeaturestoreEntityVersionOutput(
  GetFeaturestoreEntityVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getFeaturestoreEntityVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFeaturestoreEntityVersionResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetInferenceEndpointResult> getInferenceEndpointOutput(
  GetInferenceEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInferenceEndpointResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetInferenceGroupResult> getInferenceGroupOutput(
  GetInferenceGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInferenceGroupResult.fromMap);
}

/// Contract returning to user the delta models.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_get_inference_group_delta_models_status_async_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceGroupDeltaModelsStatusAsyncResult> getInferenceGroupDeltaModelsStatusAsync(
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

pulumi.Output<GetInferenceGroupDeltaModelsStatusAsyncResult> getInferenceGroupDeltaModelsStatusAsyncOutput(
  GetInferenceGroupDeltaModelsStatusAsyncArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceGroupDeltaModelsStatusAsync',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInferenceGroupDeltaModelsStatusAsyncResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetInferenceGroupStatusResult> getInferenceGroupStatusOutput(
  GetInferenceGroupStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferenceGroupStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInferenceGroupStatusResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetInferencePoolResult> getInferencePoolOutput(
  GetInferencePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferencePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInferencePoolResult.fromMap);
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

pulumi.Output<GetInferencePoolStatusResult> getInferencePoolStatusOutput(
  GetInferencePoolStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getInferencePoolStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInferencePoolStatusResult.fromMap);
}

/// Gets a Job by name/id.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetJobResult> getJobOutput(
  GetJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJobResult.fromMap);
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

pulumi.Output<GetLabelingJobResult> getLabelingJobOutput(
  GetLabelingJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getLabelingJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLabelingJobResult.fromMap);
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

pulumi.Output<GetLinkedServiceResult> getLinkedServiceOutput(
  GetLinkedServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getLinkedService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkedServiceResult.fromMap);
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

pulumi.Output<GetLinkedWorkspaceResult> getLinkedWorkspaceOutput(
  GetLinkedWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getLinkedWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLinkedWorkspaceResult.fromMap);
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

pulumi.Output<GetMachineLearningDatasetResult> getMachineLearningDatasetOutput(
  GetMachineLearningDatasetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getMachineLearningDataset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineLearningDatasetResult.fromMap);
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

pulumi.Output<GetMachineLearningDatastoreResult> getMachineLearningDatastoreOutput(
  GetMachineLearningDatastoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getMachineLearningDatastore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineLearningDatastoreResult.fromMap);
}

/// Gets an outbound rule from the managed network of a machine learning workspace.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetManagedNetworkSettingsRuleResult> getManagedNetworkSettingsRuleOutput(
  GetManagedNetworkSettingsRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getManagedNetworkSettingsRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedNetworkSettingsRuleResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetMarketplaceSubscriptionResult> getMarketplaceSubscriptionOutput(
  GetMarketplaceSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getMarketplaceSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMarketplaceSubscriptionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetModelContainerResult> getModelContainerOutput(
  GetModelContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getModelContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetModelVersionResult> getModelVersionOutput(
  GetModelVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getModelVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelVersionResult.fromMap);
}

/// Get Inference Deployment Deployment.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetOnlineDeploymentResult> getOnlineDeploymentOutput(
  GetOnlineDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOnlineDeploymentResult.fromMap);
}

/// Polls an Endpoint operation.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetOnlineDeploymentLogsResult> getOnlineDeploymentLogsOutput(
  GetOnlineDeploymentLogsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineDeploymentLogs',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOnlineDeploymentLogsResult.fromMap);
}

/// Get Online Endpoint.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetOnlineEndpointResult> getOnlineEndpointOutput(
  GetOnlineEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOnlineEndpointResult.fromMap);
}

/// Retrieve a valid AML token for an Endpoint using AMLToken-based authentication.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetOnlineEndpointTokenResult> getOnlineEndpointTokenOutput(
  GetOnlineEndpointTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOnlineEndpointToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOnlineEndpointTokenResult.fromMap);
}

/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetOutboundRuleResult> getOutboundRuleOutput(
  GetOutboundRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getOutboundRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutboundRuleResult.fromMap);
}

/// Called by end-users to get a PE connection.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Azure OpenAI Content Filters resource.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-04-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRaiPolicyResult> getRaiPolicyOutput(
  GetRaiPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRaiPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiPolicyResult.fromMap);
}

/// Get registry
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryResult> getRegistryOutput(
  GetRegistryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistry',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryResult.fromMap);
}

/// Get Code container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryCodeContainerResult> getRegistryCodeContainerOutput(
  GetRegistryCodeContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryCodeContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryCodeContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryCodeVersionResult> getRegistryCodeVersionOutput(
  GetRegistryCodeVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryCodeVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryCodeVersionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryComponentContainerResult> getRegistryComponentContainerOutput(
  GetRegistryComponentContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryComponentContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryComponentContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryComponentVersionResult> getRegistryComponentVersionOutput(
  GetRegistryComponentVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryComponentVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryComponentVersionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryDataContainerResult> getRegistryDataContainerOutput(
  GetRegistryDataContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryDataContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryDataContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryDataVersionResult> getRegistryDataVersionOutput(
  GetRegistryDataVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryDataVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryDataVersionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryEnvironmentContainerResult> getRegistryEnvironmentContainerOutput(
  GetRegistryEnvironmentContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryEnvironmentContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryEnvironmentContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryEnvironmentVersionResult> getRegistryEnvironmentVersionOutput(
  GetRegistryEnvironmentVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryEnvironmentVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryEnvironmentVersionResult.fromMap);
}

/// Get container.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryModelContainerResult> getRegistryModelContainerOutput(
  GetRegistryModelContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryModelContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryModelContainerResult.fromMap);
}

/// Get version.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetRegistryModelVersionResult> getRegistryModelVersionOutput(
  GetRegistryModelVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getRegistryModelVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRegistryModelVersionResult.fromMap);
}

/// Get schedule.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetScheduleResult> getScheduleOutput(
  GetScheduleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getSchedule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduleResult.fromMap);
}

/// Get Serverless Endpoint.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetServerlessEndpointResult> getServerlessEndpointOutput(
  GetServerlessEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getServerlessEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerlessEndpointResult.fromMap);
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

pulumi.Output<GetServerlessEndpointStatusResult> getServerlessEndpointStatusOutput(
  GetServerlessEndpointStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getServerlessEndpointStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerlessEndpointStatusResult.fromMap);
}

/// Gets the properties of the specified machine learning workspace.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetWorkspaceResult> getWorkspaceOutput(
  GetWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Lists machine learning workspaces connections by name.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<GetWorkspaceConnectionResult> getWorkspaceConnectionOutput(
  GetWorkspaceConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:getWorkspaceConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceConnectionResult.fromMap);
}

/// Lists batch Inference Endpoint keys.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListBatchEndpointKeysResult> listBatchEndpointKeysOutput(
  ListBatchEndpointKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listBatchEndpointKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListBatchEndpointKeysResult.fromMap);
}

/// Gets secrets related to Machine Learning compute (storage keys, service credentials, etc).
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListComputeKeysResult> listComputeKeysOutput(
  ListComputeKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listComputeKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListComputeKeysResult.fromMap);
}

/// Get the details (e.g IP address, port etc) of all the compute nodes in the compute.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListComputeNodesResult> listComputeNodesOutput(
  ListComputeNodesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listComputeNodes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListComputeNodesResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListConnectionAllModelsResult> listConnectionAllModelsOutput(
  ListConnectionAllModelsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listConnectionAllModels',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListConnectionAllModelsResult.fromMap);
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

pulumi.Output<ListConnectionModelsResult> listConnectionModelsOutput(
  ListConnectionModelsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listConnectionModels',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListConnectionModelsResult.fromMap);
}

/// Get datastore secrets.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListDatastoreSecretsResult> listDatastoreSecretsOutput(
  ListDatastoreSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listDatastoreSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListDatastoreSecretsResult.fromMap);
}

/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListEndpointKeysResult> listEndpointKeysOutput(
  ListEndpointKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listEndpointKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEndpointKeysResult.fromMap);
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

pulumi.Output<ListFeaturesetVersionFeaturesResult> listFeaturesetVersionFeaturesOutput(
  ListFeaturesetVersionFeaturesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listFeaturesetVersionFeatures',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListFeaturesetVersionFeaturesResult.fromMap);
}

/// A paginated list of FeaturesetJob entities.
///
/// Uses Azure REST API version 2023-06-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_featureset_version_materialization_jobs_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFeaturesetVersionMaterializationJobsResult> listFeaturesetVersionMaterializationJobs(
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

pulumi.Output<ListFeaturesetVersionMaterializationJobsResult> listFeaturesetVersionMaterializationJobsOutput(
  ListFeaturesetVersionMaterializationJobsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listFeaturesetVersionMaterializationJobs',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListFeaturesetVersionMaterializationJobsResult.fromMap);
}

/// A paginated list of String entities.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearningservices_list_inference_group_delta_models_async_args_doc}
/// [options] Invoke options controlling this call.
Future<ListInferenceGroupDeltaModelsAsyncResult> listInferenceGroupDeltaModelsAsync(
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

pulumi.Output<ListInferenceGroupDeltaModelsAsyncResult> listInferenceGroupDeltaModelsAsyncOutput(
  ListInferenceGroupDeltaModelsAsyncArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listInferenceGroupDeltaModelsAsync',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListInferenceGroupDeltaModelsAsyncResult.fromMap);
}

/// List EndpointAuthKeys for an Endpoint using Key-based authentication.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListOnlineEndpointKeysResult> listOnlineEndpointKeysOutput(
  ListOnlineEndpointKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listOnlineEndpointKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListOnlineEndpointKeysResult.fromMap);
}

/// List EndpointAuthKeys for an Endpoint using Key-based authentication.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListServerlessEndpointKeysResult> listServerlessEndpointKeysOutput(
  ListServerlessEndpointKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listServerlessEndpointKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListServerlessEndpointKeysResult.fromMap);
}

/// List all the secrets of a machine learning workspaces connections.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListWorkspaceConnectionSecretsResult> listWorkspaceConnectionSecretsOutput(
  ListWorkspaceConnectionSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceConnectionSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceConnectionSecretsResult.fromMap);
}

/// Lists all the keys associated with this workspace. This includes keys for the storage account, app insights and password for container registry.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2020-05-01-preview, 2020-05-15-preview, 2020-06-01, 2020-08-01, 2020-09-01-preview, 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListWorkspaceKeysResult> listWorkspaceKeysOutput(
  ListWorkspaceKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceKeysResult.fromMap);
}

/// Get Azure Machine Learning Workspace notebook access token
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-01-01, 2021-03-01-preview, 2021-04-01, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListWorkspaceNotebookAccessTokenResult> listWorkspaceNotebookAccessTokenOutput(
  ListWorkspaceNotebookAccessTokenArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceNotebookAccessToken',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceNotebookAccessTokenResult.fromMap);
}

/// Lists keys of Azure Machine Learning Workspaces notebook.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListWorkspaceNotebookKeysResult> listWorkspaceNotebookKeysOutput(
  ListWorkspaceNotebookKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceNotebookKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceNotebookKeysResult.fromMap);
}

/// Lists keys of Azure Machine Learning Workspace's storage account.
///
/// Uses Azure REST API version 2025-12-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01, 2022-01-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

pulumi.Output<ListWorkspaceStorageAccountKeysResult> listWorkspaceStorageAccountKeysOutput(
  ListWorkspaceStorageAccountKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:machinelearningservices:listWorkspaceStorageAccountKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListWorkspaceStorageAccountKeysResult.fromMap);
}
