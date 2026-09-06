import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_instance_hybrid_identity_metadatum_args.dart';
import 'get_cluster_instance_hybrid_identity_metadatum_result.dart';
import 'get_virtual_network_retrieve_args.dart';
import 'get_virtual_network_retrieve_result.dart';
import 'list_provisioned_cluster_instance_admin_kubeconfig_args.dart';
import 'list_provisioned_cluster_instance_admin_kubeconfig_result.dart';
import 'list_provisioned_cluster_instance_user_kubeconfig_args.dart';
import 'list_provisioned_cluster_instance_user_kubeconfig_result.dart';

/// Get the hybrid identity metadata proxy resource.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_cluster_instance_hybrid_identity_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterInstanceHybridIdentityMetadatumResult> getClusterInstanceHybridIdentityMetadatum(
  GetClusterInstanceHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getClusterInstanceHybridIdentityMetadatum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterInstanceHybridIdentityMetadatumResult.fromMap(result);
}

pulumi.Output<GetClusterInstanceHybridIdentityMetadatumResult> getClusterInstanceHybridIdentityMetadatumOutput(
  GetClusterInstanceHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getClusterInstanceHybridIdentityMetadatum',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterInstanceHybridIdentityMetadatumResult.fromMap);
}

/// Gets the specified virtual network resource
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_virtual_network_retrieve_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkRetrieveResult> getVirtualNetworkRetrieve(
  GetVirtualNetworkRetrieveArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getVirtualNetworkRetrieve',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkRetrieveResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkRetrieveResult> getVirtualNetworkRetrieveOutput(
  GetVirtualNetworkRetrieveArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getVirtualNetworkRetrieve',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkRetrieveResult.fromMap);
}

/// Lists the admin credentials of the provisioned cluster (can only be used within private network)
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_list_provisioned_cluster_instance_admin_kubeconfig_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProvisionedClusterInstanceAdminKubeconfigResult> listProvisionedClusterInstanceAdminKubeconfig(
  ListProvisionedClusterInstanceAdminKubeconfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:listProvisionedClusterInstanceAdminKubeconfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProvisionedClusterInstanceAdminKubeconfigResult.fromMap(result);
}

pulumi.Output<ListProvisionedClusterInstanceAdminKubeconfigResult> listProvisionedClusterInstanceAdminKubeconfigOutput(
  ListProvisionedClusterInstanceAdminKubeconfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:listProvisionedClusterInstanceAdminKubeconfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListProvisionedClusterInstanceAdminKubeconfigResult.fromMap);
}

/// Lists the user credentials of the provisioned cluster (can only be used within private network)
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_list_provisioned_cluster_instance_user_kubeconfig_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProvisionedClusterInstanceUserKubeconfigResult> listProvisionedClusterInstanceUserKubeconfig(
  ListProvisionedClusterInstanceUserKubeconfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:listProvisionedClusterInstanceUserKubeconfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProvisionedClusterInstanceUserKubeconfigResult.fromMap(result);
}

pulumi.Output<ListProvisionedClusterInstanceUserKubeconfigResult> listProvisionedClusterInstanceUserKubeconfigOutput(
  ListProvisionedClusterInstanceUserKubeconfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:listProvisionedClusterInstanceUserKubeconfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListProvisionedClusterInstanceUserKubeconfigResult.fromMap);
}
