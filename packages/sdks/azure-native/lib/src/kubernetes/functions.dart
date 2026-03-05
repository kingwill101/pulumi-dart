import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connected_cluster_args.dart';
import 'get_connected_cluster_result.dart';
import 'list_connected_cluster_user_credential_args.dart';
import 'list_connected_cluster_user_credential_result.dart';
import 'list_connected_cluster_user_credentials_args.dart';
import 'list_connected_cluster_user_credentials_result.dart';

/// Returns the properties of the specified connected cluster, including name, identity, properties, and additional cluster details.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// Other available API versions: 2021-04-01-preview, 2021-10-01, 2022-05-01-preview, 2022-10-01-preview, 2023-11-01-preview, 2024-01-01, 2024-06-01-preview, 2024-07-01-preview, 2024-07-15-preview, 2024-12-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetes [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetes_get_connected_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectedClusterResult> getConnectedCluster(
  GetConnectedClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetes:getConnectedCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectedClusterResult.fromMap(result);
}

/// Gets cluster user credentials of the connected cluster with a specified resource group and name.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// Other available API versions: 2021-10-01, 2022-05-01-preview, 2022-10-01-preview, 2023-11-01-preview, 2024-01-01, 2024-06-01-preview, 2024-07-01-preview, 2024-07-15-preview, 2024-12-01-preview, 2025-08-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kubernetes [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetes_list_connected_cluster_user_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectedClusterUserCredentialResult>
listConnectedClusterUserCredential(
  ListConnectedClusterUserCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetes:listConnectedClusterUserCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectedClusterUserCredentialResult.fromMap(result);
}

/// Gets cluster user credentials of the connected cluster with a specified resource group and name.
///
/// Uses Azure REST API version 2021-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_kubernetes_list_connected_cluster_user_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListConnectedClusterUserCredentialsResult>
listConnectedClusterUserCredentials(
  ListConnectedClusterUserCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:kubernetes:listConnectedClusterUserCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListConnectedClusterUserCredentialsResult.fromMap(result);
}
