import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_arc_setting_args.dart';
import 'get_arc_setting_result.dart';
import 'get_cluster_args.dart';
import 'get_cluster_job_args.dart';
import 'get_cluster_job_result.dart';
import 'get_cluster_result.dart';
import 'get_deployment_setting_args.dart';
import 'get_deployment_setting_result.dart';
import 'get_device_pool_args.dart';
import 'get_device_pool_result.dart';
import 'get_edge_machine_args.dart';
import 'get_edge_machine_job_args.dart';
import 'get_edge_machine_job_result.dart';
import 'get_edge_machine_result.dart';
import 'get_extension_args.dart';
import 'get_extension_result.dart';
import 'get_gallery_image_args.dart';
import 'get_gallery_image_result.dart';
import 'get_guest_agent_args.dart';
import 'get_guest_agent_result.dart';
import 'get_hci_edge_device_args.dart';
import 'get_hci_edge_device_job_args.dart';
import 'get_hci_edge_device_job_result.dart';
import 'get_hci_edge_device_result.dart';
import 'get_hybrid_identity_metadatum_args.dart';
import 'get_hybrid_identity_metadatum_result.dart';
import 'get_inbound_rule_args.dart';
import 'get_inbound_rule_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_logical_network_args.dart';
import 'get_logical_network_result.dart';
import 'get_machine_extension_args.dart';
import 'get_machine_extension_result.dart';
import 'get_marketplace_gallery_image_args.dart';
import 'get_marketplace_gallery_image_result.dart';
import 'get_nat_gateway_args.dart';
import 'get_nat_gateway_result.dart';
import 'get_network_interface_args.dart';
import 'get_network_interface_result.dart';
import 'get_network_security_group_args.dart';
import 'get_network_security_group_result.dart';
import 'get_public_ipaddress_args.dart';
import 'get_public_ipaddress_result.dart';
import 'get_security_rule_args.dart';
import 'get_security_rule_result.dart';
import 'get_security_setting_args.dart';
import 'get_security_setting_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_storage_container_args.dart';
import 'get_storage_container_result.dart';
import 'get_update_args.dart';
import 'get_update_result.dart';
import 'get_update_run_args.dart';
import 'get_update_run_result.dart';
import 'get_update_summary_args.dart';
import 'get_update_summary_result.dart';
import 'get_virtual_hard_disk_args.dart';
import 'get_virtual_hard_disk_result.dart';
import 'get_virtual_machine_args.dart';
import 'get_virtual_machine_instance_args.dart';
import 'get_virtual_machine_instance_result.dart';
import 'get_virtual_machine_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_result.dart';
import 'get_virtual_network_subnet_args.dart';
import 'get_virtual_network_subnet_result.dart';

/// Get ArcSetting resource details of HCI Cluster.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_arc_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArcSettingResult> getArcSetting(
  GetArcSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getArcSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArcSettingResult.fromMap(result);
}

/// Get HCI cluster.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Get a ClusterJob
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-02-15-preview, 2026-04-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_cluster_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterJobResult> getClusterJob(
  GetClusterJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getClusterJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterJobResult.fromMap(result);
}

/// Get a DeploymentSetting
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_deployment_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentSettingResult> getDeploymentSetting(
  GetDeploymentSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getDeploymentSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentSettingResult.fromMap(result);
}

/// Get a DevicePool
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-04-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_device_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDevicePoolResult> getDevicePool(
  GetDevicePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getDevicePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevicePoolResult.fromMap(result);
}

/// Get an edge machine.
///
/// Uses Azure REST API version 2025-12-01-preview.
///
/// Other available API versions: 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_edge_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeMachineResult> getEdgeMachine(
  GetEdgeMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getEdgeMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeMachineResult.fromMap(result);
}

/// Get a EdgeMachineJob
///
/// Uses Azure REST API version 2025-12-01-preview.
///
/// Other available API versions: 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_edge_machine_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeMachineJobResult> getEdgeMachineJob(
  GetEdgeMachineJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getEdgeMachineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeMachineJobResult.fromMap(result);
}

/// Get particular Arc Extension of HCI Cluster.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExtensionResult> getExtension(
  GetExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExtensionResult.fromMap(result);
}

/// Gets a gallery image
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_gallery_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGalleryImageResult> getGalleryImage(
  GetGalleryImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getGalleryImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGalleryImageResult.fromMap(result);
}

/// Implements GuestAgent GET method.
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_guest_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGuestAgentResult> getGuestAgent(
  GetGuestAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getGuestAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGuestAgentResult.fromMap(result);
}

/// Get a EdgeDevice
///
/// Uses Azure REST API version 2024-04-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_hci_edge_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHciEdgeDeviceResult> getHciEdgeDevice(
  GetHciEdgeDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getHciEdgeDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHciEdgeDeviceResult.fromMap(result);
}

/// Get a EdgeDeviceJob
///
/// Uses Azure REST API version 2024-12-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_hci_edge_device_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHciEdgeDeviceJobResult> getHciEdgeDeviceJob(
  GetHciEdgeDeviceJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getHciEdgeDeviceJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHciEdgeDeviceJobResult.fromMap(result);
}

/// Implements HybridIdentityMetadata GET method.
///
/// Uses Azure REST API version 2022-12-15-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_hybrid_identity_metadatum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridIdentityMetadatumResult> getHybridIdentityMetadatum(
  GetHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getHybridIdentityMetadatum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridIdentityMetadatumResult.fromMap(result);
}

/// The operation to get an inbound rule.
///
/// Uses Azure REST API version 2026-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_inbound_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundRuleResult> getInboundRule(
  GetInboundRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getInboundRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundRuleResult.fromMap(result);
}

/// The operation to get a loadBalancer.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

/// The operation to get a logical network.
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_logical_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogicalNetworkResult> getLogicalNetwork(
  GetLogicalNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getLogicalNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogicalNetworkResult.fromMap(result);
}

/// The operation to get the extension.
///
/// Uses Azure REST API version 2022-12-15-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_machine_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineExtensionResult> getMachineExtension(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getMachineExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineExtensionResult.fromMap(result);
}

/// Gets a marketplace gallery image
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_marketplace_gallery_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMarketplaceGalleryImageResult> getMarketplaceGalleryImage(
  GetMarketplaceGalleryImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getMarketplaceGalleryImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMarketplaceGalleryImageResult.fromMap(result);
}

/// The operation to get a natGateway.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_nat_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatGatewayResult> getNatGateway(
  GetNatGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getNatGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}

/// Gets a network interface
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_network_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceResult> getNetworkInterface(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getNetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceResult.fromMap(result);
}

/// Gets the specified network security group.
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_network_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityGroupResult> getNetworkSecurityGroup(
  GetNetworkSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getNetworkSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityGroupResult.fromMap(result);
}

/// The operation to get a virtual network.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_public_ipaddress_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIPAddressResult> getPublicIPAddress(
  GetPublicIPAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getPublicIPAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIPAddressResult.fromMap(result);
}

/// Gets the specified security rule.
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_security_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityRuleResult> getSecurityRule(
  GetSecurityRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getSecurityRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityRuleResult.fromMap(result);
}

/// Get a SecuritySetting
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_security_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecuritySettingResult> getSecuritySetting(
  GetSecuritySettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getSecuritySetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecuritySettingResult.fromMap(result);
}

/// Gets a snapshot
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Gets a storage container
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_storage_container_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStorageContainerResult> getStorageContainer(
  GetStorageContainerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getStorageContainer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStorageContainerResult.fromMap(result);
}

/// Get specified Update
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_update_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUpdateResult> getUpdate(
  GetUpdateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getUpdate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUpdateResult.fromMap(result);
}

/// Get the Update run for a specified update
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_update_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUpdateRunResult> getUpdateRun(
  GetUpdateRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getUpdateRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUpdateRunResult.fromMap(result);
}

/// Get all Update summaries under the HCI cluster
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01, 2026-02-15-preview, 2026-03-01-preview, 2026-04-01-preview, 2026-04-30, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_update_summary_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUpdateSummaryResult> getUpdateSummary(
  GetUpdateSummaryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getUpdateSummary',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUpdateSummaryResult.fromMap(result);
}

/// Gets a virtual hard disk
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_virtual_hard_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHardDiskResult> getVirtualHardDisk(
  GetVirtualHardDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualHardDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHardDiskResult.fromMap(result);
}

/// Gets a virtual machine
///
/// Uses Azure REST API version 2022-12-15-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_virtual_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineResult> getVirtualMachine(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineResult.fromMap(result);
}

/// Gets a virtual machine instance
///
/// Uses Azure REST API version 2025-02-01-preview.
///
/// Other available API versions: 2023-07-01-preview, 2023-09-01-preview, 2024-01-01, 2024-02-01-preview, 2024-05-01-preview, 2024-07-15-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-06-01-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_virtual_machine_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualMachineInstanceResult> getVirtualMachineInstance(
  GetVirtualMachineInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualMachineInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualMachineInstanceResult.fromMap(result);
}

/// The virtual network resource definition.
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2022-12-15-preview, 2025-09-01-preview, 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

/// The operation to get a virtual network subnet.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurestackhci_get_virtual_network_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkSubnetResult> getVirtualNetworkSubnet(
  GetVirtualNetworkSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualNetworkSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkSubnetResult.fromMap(result);
}
