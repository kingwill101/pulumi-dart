import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_args.dart';
import 'get_addon_result.dart';
import 'get_authorization_args.dart';
import 'get_authorization_result.dart';
import 'get_cloud_link_args.dart';
import 'get_cloud_link_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';
import 'get_global_reach_connection_args.dart';
import 'get_global_reach_connection_result.dart';
import 'get_hcx_enterprise_site_args.dart';
import 'get_hcx_enterprise_site_result.dart';
import 'get_iscsi_path_args.dart';
import 'get_iscsi_path_result.dart';
import 'get_license_args.dart';
import 'get_license_result.dart';
import 'get_placement_policy_args.dart';
import 'get_placement_policy_result.dart';
import 'get_private_cloud_args.dart';
import 'get_private_cloud_result.dart';
import 'get_private_cloud_vcf_license_args.dart';
import 'get_private_cloud_vcf_license_result.dart';
import 'get_pure_storage_policy_args.dart';
import 'get_pure_storage_policy_result.dart';
import 'get_script_execution_args.dart';
import 'get_script_execution_logs_args.dart';
import 'get_script_execution_logs_result.dart';
import 'get_script_execution_result.dart';
import 'get_workload_network_dhcp_args.dart';
import 'get_workload_network_dhcp_result.dart';
import 'get_workload_network_dns_service_args.dart';
import 'get_workload_network_dns_service_result.dart';
import 'get_workload_network_dns_zone_args.dart';
import 'get_workload_network_dns_zone_result.dart';
import 'get_workload_network_port_mirroring_args.dart';
import 'get_workload_network_port_mirroring_result.dart';
import 'get_workload_network_public_ipargs.dart';
import 'get_workload_network_public_ipresult.dart';
import 'get_workload_network_segment_args.dart';
import 'get_workload_network_segment_result.dart';
import 'get_workload_network_vmgroup_args.dart';
import 'get_workload_network_vmgroup_result.dart';
import 'list_cluster_zones_args.dart';
import 'list_cluster_zones_result.dart';
import 'list_private_cloud_admin_credentials_args.dart';
import 'list_private_cloud_admin_credentials_result.dart';

/// Get a Addon
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_addon_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddonResult> getAddon(
  GetAddonArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getAddon',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddonResult.fromMap(result);
}

/// Get a ExpressRouteAuthorization
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationResult> getAuthorization(
  GetAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationResult.fromMap(result);
}

/// Get a CloudLink
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_cloud_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloudLinkResult> getCloudLink(
  GetCloudLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getCloudLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloudLinkResult.fromMap(result);
}

/// Get a Cluster
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Get a Datastore
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}

/// Get a GlobalReachConnection
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_global_reach_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalReachConnectionResult> getGlobalReachConnection(
  GetGlobalReachConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getGlobalReachConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalReachConnectionResult.fromMap(result);
}

/// Get a HcxEnterpriseSite
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_hcx_enterprise_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHcxEnterpriseSiteResult> getHcxEnterpriseSite(
  GetHcxEnterpriseSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getHcxEnterpriseSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHcxEnterpriseSiteResult.fromMap(result);
}

/// Get a IscsiPath
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_iscsi_path_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIscsiPathResult> getIscsiPath(
  GetIscsiPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getIscsiPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIscsiPathResult.fromMap(result);
}

/// Just like ArmResourceActionSync, but with no request body.
///
/// Uses Azure REST API version 2025-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseResult> getLicense(
  GetLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseResult.fromMap(result);
}

/// Get a PlacementPolicy
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_placement_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlacementPolicyResult> getPlacementPolicy(
  GetPlacementPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getPlacementPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlacementPolicyResult.fromMap(result);
}

/// Get a PrivateCloud
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_private_cloud_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getPrivateCloud',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}

/// Get the license for the private cloud
///
/// Uses Azure REST API version 2025-09-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_private_cloud_vcf_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudVcfLicenseResult> getPrivateCloudVcfLicense(
  GetPrivateCloudVcfLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getPrivateCloudVcfLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudVcfLicenseResult.fromMap(result);
}

/// Get a PureStoragePolicy
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_pure_storage_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPureStoragePolicyResult> getPureStoragePolicy(
  GetPureStoragePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getPureStoragePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPureStoragePolicyResult.fromMap(result);
}

/// Get a ScriptExecution
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_script_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScriptExecutionResult> getScriptExecution(
  GetScriptExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getScriptExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScriptExecutionResult.fromMap(result);
}

/// Return the logs for a script execution resource
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_script_execution_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScriptExecutionLogsResult> getScriptExecutionLogs(
  GetScriptExecutionLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getScriptExecutionLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScriptExecutionLogsResult.fromMap(result);
}

/// Get a WorkloadNetworkDhcp
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_dhcp_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkDhcpResult> getWorkloadNetworkDhcp(
  GetWorkloadNetworkDhcpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkDhcp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkDhcpResult.fromMap(result);
}

/// Get a WorkloadNetworkDnsService
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_dns_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkDnsServiceResult> getWorkloadNetworkDnsService(
  GetWorkloadNetworkDnsServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkDnsService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkDnsServiceResult.fromMap(result);
}

/// Get a WorkloadNetworkDnsZone
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_dns_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkDnsZoneResult> getWorkloadNetworkDnsZone(
  GetWorkloadNetworkDnsZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkDnsZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkDnsZoneResult.fromMap(result);
}

/// Get a WorkloadNetworkPortMirroring
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_port_mirroring_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkPortMirroringResult> getWorkloadNetworkPortMirroring(
  GetWorkloadNetworkPortMirroringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkPortMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkPortMirroringResult.fromMap(result);
}

/// Get a WorkloadNetworkPublicIP
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_public_ipargs_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkPublicIPResult> getWorkloadNetworkPublicIP(
  GetWorkloadNetworkPublicIPArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkPublicIP',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkPublicIPResult.fromMap(result);
}

/// Get a WorkloadNetworkSegment
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_segment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkSegmentResult> getWorkloadNetworkSegment(
  GetWorkloadNetworkSegmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkSegment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkSegmentResult.fromMap(result);
}

/// Get a WorkloadNetworkVMGroup
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_get_workload_network_vmgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadNetworkVMGroupResult> getWorkloadNetworkVMGroup(
  GetWorkloadNetworkVMGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkVMGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadNetworkVMGroupResult.fromMap(result);
}

/// List hosts by zone in a cluster
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_list_cluster_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<ListClusterZonesResult> listClusterZones(
  ListClusterZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:listClusterZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListClusterZonesResult.fromMap(result);
}

/// List the admin credentials for the private cloud
///
/// Uses Azure REST API version 2023-09-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_avs_list_private_cloud_admin_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListPrivateCloudAdminCredentialsResult> listPrivateCloudAdminCredentials(
  ListPrivateCloudAdminCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:avs:listPrivateCloudAdminCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListPrivateCloudAdminCredentialsResult.fromMap(result);
}
