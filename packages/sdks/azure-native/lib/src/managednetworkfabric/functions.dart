import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_control_list_args.dart';
import 'get_access_control_list_result.dart';
import 'get_external_network_args.dart';
import 'get_external_network_result.dart';
import 'get_internal_network_args.dart';
import 'get_internal_network_result.dart';
import 'get_internet_gateway_args.dart';
import 'get_internet_gateway_result.dart';
import 'get_internet_gateway_rule_args.dart';
import 'get_internet_gateway_rule_result.dart';
import 'get_ip_community_args.dart';
import 'get_ip_community_result.dart';
import 'get_ip_extended_community_args.dart';
import 'get_ip_extended_community_result.dart';
import 'get_ip_prefix_args.dart';
import 'get_ip_prefix_result.dart';
import 'get_l2_isolation_domain_args.dart';
import 'get_l2_isolation_domain_result.dart';
import 'get_l3_isolation_domain_args.dart';
import 'get_l3_isolation_domain_result.dart';
import 'get_neighbor_group_args.dart';
import 'get_neighbor_group_result.dart';
import 'get_network_bootstrap_device_args.dart';
import 'get_network_bootstrap_device_result.dart';
import 'get_network_bootstrap_interface_args.dart';
import 'get_network_bootstrap_interface_result.dart';
import 'get_network_device_args.dart';
import 'get_network_device_result.dart';
import 'get_network_device_status_args.dart';
import 'get_network_device_status_result.dart';
import 'get_network_fabric_args.dart';
import 'get_network_fabric_controller_args.dart';
import 'get_network_fabric_controller_result.dart';
import 'get_network_fabric_result.dart';
import 'get_network_fabric_topology_args.dart';
import 'get_network_fabric_topology_result.dart';
import 'get_network_interface_args.dart';
import 'get_network_interface_result.dart';
import 'get_network_interface_status_args.dart';
import 'get_network_interface_status_result.dart';
import 'get_network_monitor_args.dart';
import 'get_network_monitor_result.dart';
import 'get_network_packet_broker_args.dart';
import 'get_network_packet_broker_result.dart';
import 'get_network_rack_args.dart';
import 'get_network_rack_result.dart';
import 'get_network_tap_args.dart';
import 'get_network_tap_result.dart';
import 'get_network_tap_rule_args.dart';
import 'get_network_tap_rule_result.dart';
import 'get_network_to_network_interconnect_args.dart';
import 'get_network_to_network_interconnect_result.dart';
import 'get_route_policy_args.dart';
import 'get_route_policy_result.dart';

/// Implements Access Control List GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_access_control_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessControlListResult> getAccessControlList(
  GetAccessControlListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getAccessControlList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessControlListResult.fromMap(result);
}

/// Implements ExternalNetworks GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_external_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalNetworkResult> getExternalNetwork(
  GetExternalNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getExternalNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalNetworkResult.fromMap(result);
}

/// Gets a InternalNetworks.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_internal_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternalNetworkResult> getInternalNetwork(
  GetInternalNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getInternalNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternalNetworkResult.fromMap(result);
}

/// Implements Gateway GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_internet_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternetGatewayResult> getInternetGateway(
  GetInternetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getInternetGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternetGatewayResult.fromMap(result);
}

/// Gets an Internet Gateway Rule resource.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_internet_gateway_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternetGatewayRuleResult> getInternetGatewayRule(
  GetInternetGatewayRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getInternetGatewayRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternetGatewayRuleResult.fromMap(result);
}

/// Implements an IP Community GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_ip_community_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpCommunityResult> getIpCommunity(
  GetIpCommunityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getIpCommunity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpCommunityResult.fromMap(result);
}

/// Implements IP Extended Community GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_ip_extended_community_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpExtendedCommunityResult> getIpExtendedCommunity(
  GetIpExtendedCommunityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getIpExtendedCommunity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpExtendedCommunityResult.fromMap(result);
}

/// Implements IP Prefix GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_ip_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpPrefixResult> getIpPrefix(
  GetIpPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getIpPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpPrefixResult.fromMap(result);
}

/// Implements L2 Isolation Domain GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_l2_isolation_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetL2IsolationDomainResult> getL2IsolationDomain(
  GetL2IsolationDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getL2IsolationDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetL2IsolationDomainResult.fromMap(result);
}

/// Retrieves details of this L3 Isolation Domain.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_l3_isolation_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetL3IsolationDomainResult> getL3IsolationDomain(
  GetL3IsolationDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getL3IsolationDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetL3IsolationDomainResult.fromMap(result);
}

/// Gets the Neighbor Group.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_neighbor_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNeighborGroupResult> getNeighborGroup(
  GetNeighborGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNeighborGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNeighborGroupResult.fromMap(result);
}

/// Gets a Network Bootstrap Device resource details.
///
/// Uses Azure REST API version 2025-07-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_bootstrap_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkBootstrapDeviceResult> getNetworkBootstrapDevice(
  GetNetworkBootstrapDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkBootstrapDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkBootstrapDeviceResult.fromMap(result);
}

/// Get the Network Bootstrap Interface resource details.
///
/// Uses Azure REST API version 2025-07-15.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_bootstrap_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkBootstrapInterfaceResult> getNetworkBootstrapInterface(
  GetNetworkBootstrapInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkBootstrapInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkBootstrapInterfaceResult.fromMap(result);
}

/// Gets the Network Device resource details.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkDeviceResult> getNetworkDevice(
  GetNetworkDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkDeviceResult.fromMap(result);
}

/// Get the running status of the Network Device.
///
/// Uses Azure REST API version 2023-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_device_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkDeviceStatusResult> getNetworkDeviceStatus(
  GetNetworkDeviceStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkDeviceStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkDeviceStatusResult.fromMap(result);
}

/// Get Network Fabric resource details.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_fabric_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFabricResult> getNetworkFabric(
  GetNetworkFabricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkFabric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFabricResult.fromMap(result);
}

/// Shows the provisioning status of Network Fabric Controller.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_fabric_controller_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFabricControllerResult> getNetworkFabricController(
  GetNetworkFabricControllerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkFabricController',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFabricControllerResult.fromMap(result);
}

/// Gets Topology of the underlying resources in the given Network Fabric instance.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_fabric_topology_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFabricTopologyResult> getNetworkFabricTopology(
  GetNetworkFabricTopologyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkFabricTopology',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFabricTopologyResult.fromMap(result);
}

/// Get the Network Interface resource details.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceResult> getNetworkInterface(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceResult.fromMap(result);
}

/// Get the running status of the Network Interface.
///
/// Uses Azure REST API version 2023-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_interface_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceStatusResult> getNetworkInterfaceStatus(
  GetNetworkInterfaceStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkInterfaceStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceStatusResult.fromMap(result);
}

/// Implements NetworkMonitor GET method.
///
/// Uses Azure REST API version 2024-06-15-preview.
///
/// Other available API versions: 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkMonitorResult> getNetworkMonitor(
  GetNetworkMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkMonitorResult.fromMap(result);
}

/// Retrieves details of this Network Packet Broker.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_packet_broker_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPacketBrokerResult> getNetworkPacketBroker(
  GetNetworkPacketBrokerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkPacketBroker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPacketBrokerResult.fromMap(result);
}

/// Get Network Rack resource details.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_rack_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkRackResult> getNetworkRack(
  GetNetworkRackArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkRack',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkRackResult.fromMap(result);
}

/// Retrieves details of this Network Tap.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_tap_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkTapResult> getNetworkTap(
  GetNetworkTapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkTap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkTapResult.fromMap(result);
}

/// Get Network Tap Rule resource details.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_tap_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkTapRuleResult> getNetworkTapRule(
  GetNetworkTapRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkTapRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkTapRuleResult.fromMap(result);
}

/// Implements NetworkToNetworkInterconnects GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_network_to_network_interconnect_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkToNetworkInterconnectResult> getNetworkToNetworkInterconnect(
  GetNetworkToNetworkInterconnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkToNetworkInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkToNetworkInterconnectResult.fromMap(result);
}

/// Implements Route Policy GET method.
///
/// Uses Azure REST API version 2023-06-15.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetworkfabric_get_route_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutePolicyResult> getRoutePolicy(
  GetRoutePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getRoutePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutePolicyResult.fromMap(result);
}
