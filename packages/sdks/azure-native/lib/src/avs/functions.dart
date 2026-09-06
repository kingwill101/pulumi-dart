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

pulumi.Output<GetAddonResult> getAddonOutput(
  GetAddonArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getAddon',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAddonResult.fromMap);
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

pulumi.Output<GetAuthorizationResult> getAuthorizationOutput(
  GetAuthorizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getAuthorization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizationResult.fromMap);
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

pulumi.Output<GetCloudLinkResult> getCloudLinkOutput(
  GetCloudLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getCloudLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloudLinkResult.fromMap);
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

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
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

pulumi.Output<GetDatastoreResult> getDatastoreOutput(
  GetDatastoreArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getDatastore',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatastoreResult.fromMap);
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

pulumi.Output<GetGlobalReachConnectionResult> getGlobalReachConnectionOutput(
  GetGlobalReachConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getGlobalReachConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGlobalReachConnectionResult.fromMap);
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

pulumi.Output<GetHcxEnterpriseSiteResult> getHcxEnterpriseSiteOutput(
  GetHcxEnterpriseSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getHcxEnterpriseSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHcxEnterpriseSiteResult.fromMap);
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

pulumi.Output<GetIscsiPathResult> getIscsiPathOutput(
  GetIscsiPathArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getIscsiPath',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIscsiPathResult.fromMap);
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

pulumi.Output<GetLicenseResult> getLicenseOutput(
  GetLicenseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getLicense',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLicenseResult.fromMap);
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

pulumi.Output<GetPlacementPolicyResult> getPlacementPolicyOutput(
  GetPlacementPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getPlacementPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPlacementPolicyResult.fromMap);
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

pulumi.Output<GetPrivateCloudResult> getPrivateCloudOutput(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getPrivateCloud',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudResult.fromMap);
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

pulumi.Output<GetPrivateCloudVcfLicenseResult> getPrivateCloudVcfLicenseOutput(
  GetPrivateCloudVcfLicenseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getPrivateCloudVcfLicense',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudVcfLicenseResult.fromMap);
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

pulumi.Output<GetPureStoragePolicyResult> getPureStoragePolicyOutput(
  GetPureStoragePolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getPureStoragePolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPureStoragePolicyResult.fromMap);
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

pulumi.Output<GetScriptExecutionResult> getScriptExecutionOutput(
  GetScriptExecutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getScriptExecution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScriptExecutionResult.fromMap);
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

pulumi.Output<GetScriptExecutionLogsResult> getScriptExecutionLogsOutput(
  GetScriptExecutionLogsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getScriptExecutionLogs',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScriptExecutionLogsResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkDhcpResult> getWorkloadNetworkDhcpOutput(
  GetWorkloadNetworkDhcpArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkDhcp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkDhcpResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkDnsServiceResult> getWorkloadNetworkDnsServiceOutput(
  GetWorkloadNetworkDnsServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkDnsService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkDnsServiceResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkDnsZoneResult> getWorkloadNetworkDnsZoneOutput(
  GetWorkloadNetworkDnsZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkDnsZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkDnsZoneResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkPortMirroringResult> getWorkloadNetworkPortMirroringOutput(
  GetWorkloadNetworkPortMirroringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkPortMirroring',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkPortMirroringResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkPublicIPResult> getWorkloadNetworkPublicIPOutput(
  GetWorkloadNetworkPublicIPArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkPublicIP',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkPublicIPResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkSegmentResult> getWorkloadNetworkSegmentOutput(
  GetWorkloadNetworkSegmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkSegment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkSegmentResult.fromMap);
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

pulumi.Output<GetWorkloadNetworkVMGroupResult> getWorkloadNetworkVMGroupOutput(
  GetWorkloadNetworkVMGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:getWorkloadNetworkVMGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadNetworkVMGroupResult.fromMap);
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

pulumi.Output<ListClusterZonesResult> listClusterZonesOutput(
  ListClusterZonesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:listClusterZones',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListClusterZonesResult.fromMap);
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

pulumi.Output<ListPrivateCloudAdminCredentialsResult> listPrivateCloudAdminCredentialsOutput(
  ListPrivateCloudAdminCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:avs:listPrivateCloudAdminCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListPrivateCloudAdminCredentialsResult.fromMap);
}
