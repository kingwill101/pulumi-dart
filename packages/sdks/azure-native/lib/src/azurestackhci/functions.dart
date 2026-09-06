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

pulumi.Output<GetArcSettingResult> getArcSettingOutput(
  GetArcSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getArcSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetArcSettingResult.fromMap);
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

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
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

pulumi.Output<GetClusterJobResult> getClusterJobOutput(
  GetClusterJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getClusterJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterJobResult.fromMap);
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

pulumi.Output<GetDeploymentSettingResult> getDeploymentSettingOutput(
  GetDeploymentSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getDeploymentSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentSettingResult.fromMap);
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

pulumi.Output<GetDevicePoolResult> getDevicePoolOutput(
  GetDevicePoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getDevicePool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDevicePoolResult.fromMap);
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

pulumi.Output<GetEdgeMachineResult> getEdgeMachineOutput(
  GetEdgeMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getEdgeMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeMachineResult.fromMap);
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

pulumi.Output<GetEdgeMachineJobResult> getEdgeMachineJobOutput(
  GetEdgeMachineJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getEdgeMachineJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeMachineJobResult.fromMap);
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

pulumi.Output<GetExtensionResult> getExtensionOutput(
  GetExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExtensionResult.fromMap);
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

pulumi.Output<GetGalleryImageResult> getGalleryImageOutput(
  GetGalleryImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getGalleryImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGalleryImageResult.fromMap);
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

pulumi.Output<GetGuestAgentResult> getGuestAgentOutput(
  GetGuestAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getGuestAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGuestAgentResult.fromMap);
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

pulumi.Output<GetHciEdgeDeviceResult> getHciEdgeDeviceOutput(
  GetHciEdgeDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getHciEdgeDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHciEdgeDeviceResult.fromMap);
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

pulumi.Output<GetHciEdgeDeviceJobResult> getHciEdgeDeviceJobOutput(
  GetHciEdgeDeviceJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getHciEdgeDeviceJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHciEdgeDeviceJobResult.fromMap);
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

pulumi.Output<GetHybridIdentityMetadatumResult> getHybridIdentityMetadatumOutput(
  GetHybridIdentityMetadatumArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getHybridIdentityMetadatum',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHybridIdentityMetadatumResult.fromMap);
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

pulumi.Output<GetInboundRuleResult> getInboundRuleOutput(
  GetInboundRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getInboundRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundRuleResult.fromMap);
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

pulumi.Output<GetLoadBalancerResult> getLoadBalancerOutput(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getLoadBalancer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadBalancerResult.fromMap);
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

pulumi.Output<GetLogicalNetworkResult> getLogicalNetworkOutput(
  GetLogicalNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getLogicalNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLogicalNetworkResult.fromMap);
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

pulumi.Output<GetMachineExtensionResult> getMachineExtensionOutput(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getMachineExtension',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineExtensionResult.fromMap);
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

pulumi.Output<GetMarketplaceGalleryImageResult> getMarketplaceGalleryImageOutput(
  GetMarketplaceGalleryImageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getMarketplaceGalleryImage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMarketplaceGalleryImageResult.fromMap);
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

pulumi.Output<GetNatGatewayResult> getNatGatewayOutput(
  GetNatGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getNatGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNatGatewayResult.fromMap);
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

pulumi.Output<GetNetworkInterfaceResult> getNetworkInterfaceOutput(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getNetworkInterface',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkInterfaceResult.fromMap);
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

pulumi.Output<GetNetworkSecurityGroupResult> getNetworkSecurityGroupOutput(
  GetNetworkSecurityGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getNetworkSecurityGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityGroupResult.fromMap);
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

pulumi.Output<GetPublicIPAddressResult> getPublicIPAddressOutput(
  GetPublicIPAddressArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getPublicIPAddress',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPublicIPAddressResult.fromMap);
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

pulumi.Output<GetSecurityRuleResult> getSecurityRuleOutput(
  GetSecurityRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getSecurityRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityRuleResult.fromMap);
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

pulumi.Output<GetSecuritySettingResult> getSecuritySettingOutput(
  GetSecuritySettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getSecuritySetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecuritySettingResult.fromMap);
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

pulumi.Output<GetSnapshotResult> getSnapshotOutput(
  GetSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnapshotResult.fromMap);
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

pulumi.Output<GetStorageContainerResult> getStorageContainerOutput(
  GetStorageContainerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getStorageContainer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStorageContainerResult.fromMap);
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

pulumi.Output<GetUpdateResult> getUpdateOutput(
  GetUpdateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getUpdate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUpdateResult.fromMap);
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

pulumi.Output<GetUpdateRunResult> getUpdateRunOutput(
  GetUpdateRunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getUpdateRun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUpdateRunResult.fromMap);
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

pulumi.Output<GetUpdateSummaryResult> getUpdateSummaryOutput(
  GetUpdateSummaryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getUpdateSummary',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUpdateSummaryResult.fromMap);
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

pulumi.Output<GetVirtualHardDiskResult> getVirtualHardDiskOutput(
  GetVirtualHardDiskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualHardDisk',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualHardDiskResult.fromMap);
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

pulumi.Output<GetVirtualMachineResult> getVirtualMachineOutput(
  GetVirtualMachineArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualMachine',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineResult.fromMap);
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

pulumi.Output<GetVirtualMachineInstanceResult> getVirtualMachineInstanceOutput(
  GetVirtualMachineInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualMachineInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualMachineInstanceResult.fromMap);
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

pulumi.Output<GetVirtualNetworkResult> getVirtualNetworkOutput(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkResult.fromMap);
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

pulumi.Output<GetVirtualNetworkSubnetResult> getVirtualNetworkSubnetOutput(
  GetVirtualNetworkSubnetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurestackhci:getVirtualNetworkSubnet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkSubnetResult.fromMap);
}
