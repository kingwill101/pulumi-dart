import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_args.dart';
import 'get_key_result.dart';
import 'get_managed_hsm_args.dart';
import 'get_managed_hsm_result.dart';
import 'get_mhsmprivate_endpoint_connection_args.dart';
import 'get_mhsmprivate_endpoint_connection_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_vault_args.dart';
import 'get_vault_result.dart';

/// Gets the current version of the specified key from the specified key vault.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:keyvault:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the managed HSM Pool.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_mhsmprivate_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMHSMPrivateEndpointConnectionResult> getMHSMPrivateEndpointConnection(
  GetMHSMPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:keyvault:getMHSMPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMHSMPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the specified managed HSM Pool.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_managed_hsm_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedHsmResult> getManagedHsm(
  GetManagedHsmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:keyvault:getManagedHsm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedHsmResult.fromMap(result);
}

/// Gets the specified private endpoint connection associated with the key vault.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:keyvault:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the specified secret.  NOTE: This API is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:keyvault:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Gets the specified Azure key vault.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVaultResult> getVault(
  GetVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:keyvault:getVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVaultResult.fromMap(result);
}
