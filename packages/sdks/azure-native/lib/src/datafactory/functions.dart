import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_data_capture_args.dart';
import 'get_change_data_capture_result.dart';
import 'get_credential_operation_args.dart';
import 'get_credential_operation_result.dart';
import 'get_data_flow_args.dart';
import 'get_data_flow_result.dart';
import 'get_dataset_args.dart';
import 'get_dataset_result.dart';
import 'get_exposure_control_feature_value_args.dart';
import 'get_exposure_control_feature_value_by_factory_args.dart';
import 'get_exposure_control_feature_value_by_factory_result.dart';
import 'get_exposure_control_feature_value_result.dart';
import 'get_factory_args.dart';
import 'get_factory_data_plane_access_args.dart';
import 'get_factory_data_plane_access_result.dart';
import 'get_factory_git_hub_access_token_args.dart';
import 'get_factory_git_hub_access_token_result.dart';
import 'get_factory_result.dart';
import 'get_global_parameter_args.dart';
import 'get_global_parameter_result.dart';
import 'get_integration_runtime_args.dart';
import 'get_integration_runtime_connection_info_args.dart';
import 'get_integration_runtime_connection_info_result.dart';
import 'get_integration_runtime_object_metadatum_args.dart';
import 'get_integration_runtime_object_metadatum_result.dart';
import 'get_integration_runtime_result.dart';
import 'get_integration_runtime_status_args.dart';
import 'get_integration_runtime_status_result.dart';
import 'get_linked_service_args.dart';
import 'get_linked_service_result.dart';
import 'get_managed_private_endpoint_args.dart';
import 'get_managed_private_endpoint_result.dart';
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_trigger_args.dart';
import 'get_trigger_event_subscription_status_args.dart';
import 'get_trigger_event_subscription_status_result.dart';
import 'get_trigger_result.dart';
import 'list_integration_runtime_auth_keys_args.dart';
import 'list_integration_runtime_auth_keys_result.dart';

/// Gets a change data capture.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_change_data_capture_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChangeDataCaptureResult> getChangeDataCapture(
  GetChangeDataCaptureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getChangeDataCapture',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChangeDataCaptureResult.fromMap(result);
}

/// Gets a credential.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_credential_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCredentialOperationResult> getCredentialOperation(
  GetCredentialOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getCredentialOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialOperationResult.fromMap(result);
}

/// Gets a data flow.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_data_flow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataFlowResult> getDataFlow(
  GetDataFlowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getDataFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataFlowResult.fromMap(result);
}

/// Gets a dataset.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_dataset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetResult> getDataset(
  GetDatasetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getDataset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetResult.fromMap(result);
}

/// Get exposure control feature for specific location.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_exposure_control_feature_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExposureControlFeatureValueResult> getExposureControlFeatureValue(
  GetExposureControlFeatureValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getExposureControlFeatureValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExposureControlFeatureValueResult.fromMap(result);
}

/// Get exposure control feature for specific factory.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_exposure_control_feature_value_by_factory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExposureControlFeatureValueByFactoryResult> getExposureControlFeatureValueByFactory(
  GetExposureControlFeatureValueByFactoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getExposureControlFeatureValueByFactory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExposureControlFeatureValueByFactoryResult.fromMap(result);
}

/// Gets a factory.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_factory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFactoryResult> getFactory(
  GetFactoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getFactory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFactoryResult.fromMap(result);
}

/// Get Data Plane access.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_factory_data_plane_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFactoryDataPlaneAccessResult> getFactoryDataPlaneAccess(
  GetFactoryDataPlaneAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getFactoryDataPlaneAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFactoryDataPlaneAccessResult.fromMap(result);
}

/// Get GitHub Access Token.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_factory_git_hub_access_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFactoryGitHubAccessTokenResult> getFactoryGitHubAccessToken(
  GetFactoryGitHubAccessTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getFactoryGitHubAccessToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFactoryGitHubAccessTokenResult.fromMap(result);
}

/// Gets a Global parameter
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_global_parameter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalParameterResult> getGlobalParameter(
  GetGlobalParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getGlobalParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalParameterResult.fromMap(result);
}

/// Gets an integration runtime.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_integration_runtime_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeResult> getIntegrationRuntime(
  GetIntegrationRuntimeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getIntegrationRuntime',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeResult.fromMap(result);
}

/// Gets the on-premises integration runtime connection information for encrypting the on-premises data source credentials.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_integration_runtime_connection_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeConnectionInfoResult> getIntegrationRuntimeConnectionInfo(
  GetIntegrationRuntimeConnectionInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getIntegrationRuntimeConnectionInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeConnectionInfoResult.fromMap(result);
}

/// Get a SSIS integration runtime object metadata by specified path. The return is pageable metadata list.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_integration_runtime_object_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeObjectMetadatumResult> getIntegrationRuntimeObjectMetadatum(
  GetIntegrationRuntimeObjectMetadatumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getIntegrationRuntimeObjectMetadatum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeObjectMetadatumResult.fromMap(result);
}

/// Gets detailed status information for an integration runtime.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_integration_runtime_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationRuntimeStatusResult> getIntegrationRuntimeStatus(
  GetIntegrationRuntimeStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getIntegrationRuntimeStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationRuntimeStatusResult.fromMap(result);
}

/// Gets a linked service.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_linked_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinkedServiceResult> getLinkedService(
  GetLinkedServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getLinkedService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinkedServiceResult.fromMap(result);
}

/// Gets a managed private endpoint.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_managed_private_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedPrivateEndpointResult> getManagedPrivateEndpoint(
  GetManagedPrivateEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getManagedPrivateEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedPrivateEndpointResult.fromMap(result);
}

/// Gets a pipeline.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}

/// Gets a private endpoint connection
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets a trigger.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerResult> getTrigger(
  GetTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerResult.fromMap(result);
}

/// Get a trigger's event subscription status.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_get_trigger_event_subscription_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTriggerEventSubscriptionStatusResult> getTriggerEventSubscriptionStatus(
  GetTriggerEventSubscriptionStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:getTriggerEventSubscriptionStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTriggerEventSubscriptionStatusResult.fromMap(result);
}

/// Retrieves the authentication keys for an integration runtime.
///
/// Uses Azure REST API version 2018-06-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datafactory_list_integration_runtime_auth_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIntegrationRuntimeAuthKeysResult> listIntegrationRuntimeAuthKeys(
  ListIntegrationRuntimeAuthKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datafactory:listIntegrationRuntimeAuthKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIntegrationRuntimeAuthKeysResult.fromMap(result);
}
