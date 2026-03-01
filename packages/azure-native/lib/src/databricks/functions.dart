import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_connector_args.dart';
import 'get_access_connector_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_vnet_peering_args.dart';
import 'get_vnet_peering_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Gets an Azure Databricks Access Connector.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-05-01, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_access_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessConnectorResult> getAccessConnector(
  GetAccessConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databricks:getAccessConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessConnectorResult.fromMap(result);
}

/// Get a private endpoint connection properties for a workspace
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-02-01, 2023-09-15-preview, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databricks:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the workspace vNet Peering.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-02-01, 2023-09-15-preview, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_vnet_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVNetPeeringResult> getVNetPeering(
  GetVNetPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databricks:getVNetPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVNetPeeringResult.fromMap(result);
}

/// Gets the workspace.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-02-01, 2023-09-15-preview, 2024-09-01-preview, 2025-03-01-preview, 2025-08-01-preview, 2025-10-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databricks [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databricks_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databricks:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}
