import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_result.dart';
import 'get_flow_args.dart';
import 'get_flow_destination_endpoint_ports_args.dart';
import 'get_flow_destination_endpoint_ports_result.dart';
import 'get_flow_destination_endpoints_args.dart';
import 'get_flow_destination_endpoints_result.dart';
import 'get_flow_profile_args.dart';
import 'get_flow_profile_result.dart';
import 'get_flow_result.dart';
import 'get_flow_source_addresses_args.dart';
import 'get_flow_source_addresses_result.dart';
import 'get_flow_stream_connection_string_args.dart';
import 'get_flow_stream_connection_string_result.dart';
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';
import 'list_azure_data_transfer_approved_schemas_args.dart';
import 'list_azure_data_transfer_approved_schemas_result.dart';
import 'list_azure_data_transfer_flow_profiles_args.dart';
import 'list_azure_data_transfer_flow_profiles_result.dart';
import 'list_list_flows_by_pipeline_args.dart';
import 'list_list_flows_by_pipeline_result.dart';
import 'list_list_pending_connection_args.dart';
import 'list_list_pending_connection_result.dart';
import 'list_list_pending_flow_args.dart';
import 'list_list_pending_flow_result.dart';
import 'list_list_schema_args.dart';
import 'list_list_schema_result.dart';

/// Gets connection resource.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// Gets flow resource.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_flow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowResult> getFlow(
  GetFlowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowResult.fromMap(result);
}

/// Get the destination endpoint ports for the specified flow and stream ID.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_flow_destination_endpoint_ports_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowDestinationEndpointPortsResult> getFlowDestinationEndpointPorts(
  GetFlowDestinationEndpointPortsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getFlowDestinationEndpointPorts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowDestinationEndpointPortsResult.fromMap(result);
}

/// Get the destination endpoints for the specified flow and stream ID.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_flow_destination_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowDestinationEndpointsResult> getFlowDestinationEndpoints(
  GetFlowDestinationEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getFlowDestinationEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowDestinationEndpointsResult.fromMap(result);
}

/// Retrieves the specified FlowProfile resource.
///
/// Uses Azure REST API version 2025-05-30-preview.
///
/// Other available API versions: 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_flow_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowProfileResult> getFlowProfile(
  GetFlowProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getFlowProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowProfileResult.fromMap(result);
}

/// Get the source addresses for the specified flow.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_flow_source_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowSourceAddressesResult> getFlowSourceAddresses(
  GetFlowSourceAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getFlowSourceAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowSourceAddressesResult.fromMap(result);
}

/// Get the connection string for the specified flow.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_flow_stream_connection_string_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowStreamConnectionStringResult> getFlowStreamConnectionString(
  GetFlowStreamConnectionStringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getFlowStreamConnectionString',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowStreamConnectionStringResult.fromMap(result);
}

/// Gets pipeline resource.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_get_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}

/// Lists approved schemas for Azure Data Transfer.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_list_azure_data_transfer_approved_schemas_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAzureDataTransferApprovedSchemasResult>
listAzureDataTransferApprovedSchemas(
  ListAzureDataTransferApprovedSchemasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:listAzureDataTransferApprovedSchemas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAzureDataTransferApprovedSchemasResult.fromMap(result);
}

/// Retrieves a list of FlowProfile resources associated with a specified pipeline.
///
/// Uses Azure REST API version 2025-05-30-preview.
///
/// Other available API versions: 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_list_azure_data_transfer_flow_profiles_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAzureDataTransferFlowProfilesResult>
listAzureDataTransferFlowProfiles(
  ListAzureDataTransferFlowProfilesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:listAzureDataTransferFlowProfiles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAzureDataTransferFlowProfilesResult.fromMap(result);
}

/// Lists all Flows associated with the specified Pipeline.
///
/// Uses Azure REST API version 2025-05-21.
///
/// Other available API versions: 2025-04-11-preview, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_list_list_flows_by_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<ListListFlowsByPipelineResult> listListFlowsByPipeline(
  ListListFlowsByPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:listListFlowsByPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListFlowsByPipelineResult.fromMap(result);
}

/// Lists all pending connections for a connection.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_list_list_pending_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<ListListPendingConnectionResult> listListPendingConnection(
  ListListPendingConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:listListPendingConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListPendingConnectionResult.fromMap(result);
}

/// Lists all pending flows for a connection.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_list_list_pending_flow_args_doc}
/// [options] Invoke options controlling this call.
Future<ListListPendingFlowResult> listListPendingFlow(
  ListListPendingFlowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:listListPendingFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListPendingFlowResult.fromMap(result);
}

/// Lists the schemas for the specified connection in a pipeline.
///
/// Uses Azure REST API version 2024-09-27.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azuredatatransfer_list_list_schema_args_doc}
/// [options] Invoke options controlling this call.
Future<ListListSchemaResult> listListSchema(
  ListListSchemaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azuredatatransfer:listListSchema',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListSchemaResult.fromMap(result);
}
