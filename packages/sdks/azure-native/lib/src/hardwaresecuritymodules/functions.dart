import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_hsm_cluster_args.dart';
import 'get_cloud_hsm_cluster_private_endpoint_connection_args.dart';
import 'get_cloud_hsm_cluster_private_endpoint_connection_result.dart';
import 'get_cloud_hsm_cluster_result.dart';
import 'get_dedicated_hsm_args.dart';
import 'get_dedicated_hsm_result.dart';

/// Gets the specified Cloud HSM Cluster
///
/// Uses Azure REST API version 2024-06-30-preview.
///
/// Other available API versions: 2022-08-31-preview, 2023-12-10-preview, 2025-03-31, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hardwaresecuritymodules [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hardwaresecuritymodules_get_cloud_hsm_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudHsmClusterResult> getCloudHsmCluster(
  GetCloudHsmClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hardwaresecuritymodules:getCloudHsmCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudHsmClusterResult.fromMap(result);
}

pulumi.Output<GetCloudHsmClusterResult> getCloudHsmClusterOutput(
  GetCloudHsmClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hardwaresecuritymodules:getCloudHsmCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudHsmClusterResult.fromMap);
}

/// Gets the private endpoint connection for the Cloud Hsm Cluster.
///
/// Uses Azure REST API version 2024-06-30-preview.
///
/// Other available API versions: 2022-08-31-preview, 2023-12-10-preview, 2025-03-31, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hardwaresecuritymodules [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hardwaresecuritymodules_get_cloud_hsm_cluster_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudHsmClusterPrivateEndpointConnectionResult> getCloudHsmClusterPrivateEndpointConnection(
  GetCloudHsmClusterPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hardwaresecuritymodules:getCloudHsmClusterPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudHsmClusterPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetCloudHsmClusterPrivateEndpointConnectionResult> getCloudHsmClusterPrivateEndpointConnectionOutput(
  GetCloudHsmClusterPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hardwaresecuritymodules:getCloudHsmClusterPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudHsmClusterPrivateEndpointConnectionResult.fromMap);
}

/// Gets the specified Azure dedicated HSM.
///
/// Uses Azure REST API version 2024-06-30-preview.
///
/// Other available API versions: 2021-11-30, 2025-03-31, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hardwaresecuritymodules [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hardwaresecuritymodules_get_dedicated_hsm_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHsmResult> getDedicatedHsm(
  GetDedicatedHsmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hardwaresecuritymodules:getDedicatedHsm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHsmResult.fromMap(result);
}

pulumi.Output<GetDedicatedHsmResult> getDedicatedHsmOutput(
  GetDedicatedHsmArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hardwaresecuritymodules:getDedicatedHsm',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDedicatedHsmResult.fromMap);
}
