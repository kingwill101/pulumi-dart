import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_instance_args.dart';
import 'get_backup_instance_result.dart';
import 'get_backup_policy_args.dart';
import 'get_backup_policy_result.dart';
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';
import 'get_dpp_resource_guard_proxy_args.dart';
import 'get_dpp_resource_guard_proxy_result.dart';
import 'get_resource_guard_args.dart';
import 'get_resource_guard_result.dart';

/// Gets a backup instance with name in a backup vault
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataprotection_get_backup_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupInstanceResult> getBackupInstance(
  GetBackupInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dataprotection:getBackupInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupInstanceResult.fromMap(result);
}

/// Gets a backup policy belonging to a backup vault
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataprotection_get_backup_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPolicyResult> getBackupPolicy(
  GetBackupPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dataprotection:getBackupPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPolicyResult.fromMap(result);
}

/// Returns a resource belonging to a resource group.
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataprotection_get_backup_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupVaultResult> getBackupVault(
  GetBackupVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dataprotection:getBackupVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupVaultResult.fromMap(result);
}

/// ResourceGuardProxyBaseResource object, used for response and request bodies for ResourceGuardProxy APIs
///
/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataprotection_get_dpp_resource_guard_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDppResourceGuardProxyResult> getDppResourceGuardProxy(
  GetDppResourceGuardProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dataprotection:getDppResourceGuardProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDppResourceGuardProxyResult.fromMap(result);
}

/// Uses Azure REST API version 2025-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_dataprotection_get_resource_guard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGuardResult> getResourceGuard(
  GetResourceGuardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dataprotection:getResourceGuard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGuardResult.fromMap(result);
}
