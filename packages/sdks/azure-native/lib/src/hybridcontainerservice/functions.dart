import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';
import 'get_cluster_instance_hybrid_identity_metadatum_args.dart';
import 'get_cluster_instance_hybrid_identity_metadatum_result.dart';
import 'get_hybrid_identity_metadatum_args.dart';
import 'get_hybrid_identity_metadatum_result.dart';
import 'get_kubernetes_versions_args.dart';
import 'get_kubernetes_versions_result.dart';
import 'get_provisioned_cluster_args.dart';
import 'get_provisioned_cluster_result.dart';
import 'get_storage_space_retrieve_args.dart';
import 'get_storage_space_retrieve_result.dart';
import 'get_virtual_network_retrieve_args.dart';
import 'get_virtual_network_retrieve_result.dart';
import 'get_vmskus_args.dart';
import 'get_vmskus_result.dart';
import 'list_provisioned_cluster_instance_admin_kubeconfig_args.dart';
import 'list_provisioned_cluster_instance_admin_kubeconfig_result.dart';
import 'list_provisioned_cluster_instance_user_kubeconfig_args.dart';
import 'list_provisioned_cluster_instance_user_kubeconfig_result.dart';

/// Gets the agent pool in the Hybrid AKS provisioned cluster
///
/// Uses Azure REST API version 2022-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_agent_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentPoolResult> getAgentPool(
  GetAgentPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getAgentPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentPoolResult.fromMap(result);
}

/// Get the hybrid identity metadata proxy resource.
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Get the hybrid identity metadata proxy resource.
///
/// Uses Azure REST API version 2022-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_hybrid_identity_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridIdentityMetadatumResult> getHybridIdentityMetadatum(
  GetHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getHybridIdentityMetadatum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridIdentityMetadatumResult.fromMap(result);
}

/// Lists the supported kubernetes versions for the specified custom location
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_kubernetes_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKubernetesVersionsResult> getKubernetesVersions(
  GetKubernetesVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getKubernetesVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKubernetesVersionsResult.fromMap(result);
}

/// Gets the Hybrid AKS provisioned cluster
///
/// Uses Azure REST API version 2022-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_provisioned_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProvisionedClusterResult> getProvisionedCluster(
  GetProvisionedClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getProvisionedCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProvisionedClusterResult.fromMap(result);
}

/// Gets the Hybrid AKS storage space object
///
/// Uses Azure REST API version 2022-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_storage_space_retrieve_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageSpaceRetrieveResult> getStorageSpaceRetrieve(
  GetStorageSpaceRetrieveArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getStorageSpaceRetrieve',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageSpaceRetrieveResult.fromMap(result);
}

/// Lists the supported VM skus for the specified custom location
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcontainerservice_get_vmskus_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVMSkusResult> getVMSkus(
  GetVMSkusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcontainerservice:getVMSkus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVMSkusResult.fromMap(result);
}

/// Gets the Hybrid AKS virtual network
///
/// Uses Azure REST API version 2022-09-01-preview.
///
/// Other available API versions: 2023-11-15-preview, 2024-01-01, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Lists the admin credentials of the provisioned cluster (can only be used within private network)
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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

/// Lists the user credentials of the provisioned cluster (can only be used within private network)
///
/// Uses Azure REST API version 2024-01-01.
///
/// Other available API versions: 2023-11-15-preview, 2025-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcontainerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
