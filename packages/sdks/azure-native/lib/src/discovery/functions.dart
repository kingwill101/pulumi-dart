import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bookshelf_args.dart';
import 'get_bookshelf_private_endpoint_connection_args.dart';
import 'get_bookshelf_private_endpoint_connection_result.dart';
import 'get_bookshelf_result.dart';
import 'get_chat_model_deployment_args.dart';
import 'get_chat_model_deployment_result.dart';
import 'get_node_pool_args.dart';
import 'get_node_pool_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_storage_asset_args.dart';
import 'get_storage_asset_result.dart';
import 'get_storage_container_args.dart';
import 'get_storage_container_result.dart';
import 'get_supercomputer_args.dart';
import 'get_supercomputer_result.dart';
import 'get_tool_args.dart';
import 'get_tool_result.dart';
import 'get_workspace_args.dart';
import 'get_workspace_private_endpoint_connection_args.dart';
import 'get_workspace_private_endpoint_connection_result.dart';
import 'get_workspace_result.dart';

/// Get a Bookshelf
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_bookshelf_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBookshelfResult> getBookshelf(
  GetBookshelfArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getBookshelf',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBookshelfResult.fromMap(result);
}

pulumi.Output<GetBookshelfResult> getBookshelfOutput(
  GetBookshelfArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getBookshelf',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBookshelfResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the bookshelf.
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_bookshelf_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBookshelfPrivateEndpointConnectionResult> getBookshelfPrivateEndpointConnection(
  GetBookshelfPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getBookshelfPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBookshelfPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetBookshelfPrivateEndpointConnectionResult> getBookshelfPrivateEndpointConnectionOutput(
  GetBookshelfPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getBookshelfPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBookshelfPrivateEndpointConnectionResult.fromMap);
}

/// Get a ChatModelDeployment
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_chat_model_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChatModelDeploymentResult> getChatModelDeployment(
  GetChatModelDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getChatModelDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChatModelDeploymentResult.fromMap(result);
}

pulumi.Output<GetChatModelDeploymentResult> getChatModelDeploymentOutput(
  GetChatModelDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getChatModelDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChatModelDeploymentResult.fromMap);
}

/// Get a NodePool
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_node_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodePoolResult> getNodePool(
  GetNodePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getNodePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodePoolResult.fromMap(result);
}

pulumi.Output<GetNodePoolResult> getNodePoolOutput(
  GetNodePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getNodePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNodePoolResult.fromMap);
}

/// Get a Project
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
}

/// Get a StorageAsset
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_storage_asset_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageAssetResult> getStorageAsset(
  GetStorageAssetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getStorageAsset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageAssetResult.fromMap(result);
}

pulumi.Output<GetStorageAssetResult> getStorageAssetOutput(
  GetStorageAssetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getStorageAsset',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageAssetResult.fromMap);
}

/// Get a StorageContainer
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_storage_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageContainerResult> getStorageContainer(
  GetStorageContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getStorageContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageContainerResult.fromMap(result);
}

pulumi.Output<GetStorageContainerResult> getStorageContainerOutput(
  GetStorageContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getStorageContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageContainerResult.fromMap);
}

/// Get a Supercomputer
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_supercomputer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSupercomputerResult> getSupercomputer(
  GetSupercomputerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getSupercomputer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSupercomputerResult.fromMap(result);
}

pulumi.Output<GetSupercomputerResult> getSupercomputerOutput(
  GetSupercomputerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getSupercomputer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSupercomputerResult.fromMap);
}

/// Get a Tool
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_tool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetToolResult> getTool(
  GetToolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getTool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetToolResult.fromMap(result);
}

pulumi.Output<GetToolResult> getToolOutput(
  GetToolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getTool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetToolResult.fromMap);
}

/// Get a Workspace
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getWorkspace',
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
    'azure-native:discovery:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the workspace.
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_discovery_get_workspace_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspacePrivateEndpointConnectionResult> getWorkspacePrivateEndpointConnection(
  GetWorkspacePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:discovery:getWorkspacePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspacePrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetWorkspacePrivateEndpointConnectionResult> getWorkspacePrivateEndpointConnectionOutput(
  GetWorkspacePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:discovery:getWorkspacePrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspacePrivateEndpointConnectionResult.fromMap);
}
