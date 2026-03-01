import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_args.dart';
import 'get_application_package_args.dart';
import 'get_application_package_result.dart';
import 'get_application_result.dart';
import 'get_batch_account_args.dart';
import 'get_batch_account_result.dart';
import 'get_pool_args.dart';
import 'get_pool_result.dart';
import 'list_batch_account_keys_args.dart';
import 'list_batch_account_keys_result.dart';

/// Gets information about the specified application.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:batch:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Gets information about the specified application package.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_application_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationPackageResult> getApplicationPackage(
  GetApplicationPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:batch:getApplicationPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationPackageResult.fromMap(result);
}

/// Gets information about the specified Batch account.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_batch_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBatchAccountResult> getBatchAccount(
  GetBatchAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:batch:getBatchAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchAccountResult.fromMap(result);
}

/// Gets information about the specified pool.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_get_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoolResult> getPool(
  GetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:batch:getPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoolResult.fromMap(result);
}

/// This operation applies only to Batch accounts with allowedAuthenticationModes containing 'SharedKey'. If the Batch account doesn't contain 'SharedKey' in its allowedAuthenticationMode, clients cannot use shared keys to authenticate, and must use another allowedAuthenticationModes instead. In this case, getting the keys will fail.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_batch_list_batch_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListBatchAccountKeysResult> listBatchAccountKeys(
  ListBatchAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:batch:listBatchAccountKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListBatchAccountKeysResult.fromMap(result);
}
