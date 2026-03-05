import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dra_args.dart';
import 'get_dra_result.dart';
import 'get_fabric_agent_args.dart';
import 'get_fabric_agent_result.dart';
import 'get_fabric_args.dart';
import 'get_fabric_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_proxy_args.dart';
import 'get_private_endpoint_connection_proxy_result.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_protected_item_args.dart';
import 'get_protected_item_result.dart';
import 'get_replication_extension_args.dart';
import 'get_replication_extension_result.dart';
import 'get_vault_args.dart';
import 'get_vault_result.dart';

/// Gets the details of the fabric agent.
///
/// Uses Azure REST API version 2021-02-16-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_dra_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDraResult> getDra(
  GetDraArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getDra',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDraResult.fromMap(result);
}

/// Gets the details of the fabric.
///
/// Uses Azure REST API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_fabric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFabricResult> getFabric(
  GetFabricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getFabric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFabricResult.fromMap(result);
}

/// Gets the details of the fabric agent.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_fabric_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFabricAgentResult> getFabricAgent(
  GetFabricAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getFabricAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFabricAgentResult.fromMap(result);
}

/// Gets the details of the policy.
///
/// Uses Azure REST API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

/// Gets the private endpoint connection details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the private endpoint connection proxy details.
///
/// Uses Azure REST API version 2024-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_private_endpoint_connection_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionProxyResult>
getPrivateEndpointConnectionProxy(
  GetPrivateEndpointConnectionProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getPrivateEndpointConnectionProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionProxyResult.fromMap(result);
}

/// Gets the details of the protected item.
///
/// Uses Azure REST API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_protected_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtectedItemResult> getProtectedItem(
  GetProtectedItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getProtectedItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectedItemResult.fromMap(result);
}

/// Gets the details of the replication extension.
///
/// Uses Azure REST API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_replication_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplicationExtensionResult> getReplicationExtension(
  GetReplicationExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getReplicationExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationExtensionResult.fromMap(result);
}

/// Gets the details of the vault.
///
/// Uses Azure REST API version 2021-02-16-preview.
///
/// Other available API versions: 2024-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_datareplication_get_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVaultResult> getVault(
  GetVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datareplication:getVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultResult.fromMap(result);
}
