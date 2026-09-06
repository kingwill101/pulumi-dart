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

pulumi.Output<GetAccessControlListResult> getAccessControlListOutput(
  GetAccessControlListArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getAccessControlList',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccessControlListResult.fromMap);
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

pulumi.Output<GetExternalNetworkResult> getExternalNetworkOutput(
  GetExternalNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getExternalNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExternalNetworkResult.fromMap);
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

pulumi.Output<GetInternalNetworkResult> getInternalNetworkOutput(
  GetInternalNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getInternalNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInternalNetworkResult.fromMap);
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

pulumi.Output<GetInternetGatewayResult> getInternetGatewayOutput(
  GetInternetGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getInternetGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInternetGatewayResult.fromMap);
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

pulumi.Output<GetInternetGatewayRuleResult> getInternetGatewayRuleOutput(
  GetInternetGatewayRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getInternetGatewayRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInternetGatewayRuleResult.fromMap);
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

pulumi.Output<GetIpCommunityResult> getIpCommunityOutput(
  GetIpCommunityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getIpCommunity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpCommunityResult.fromMap);
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

pulumi.Output<GetIpExtendedCommunityResult> getIpExtendedCommunityOutput(
  GetIpExtendedCommunityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getIpExtendedCommunity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpExtendedCommunityResult.fromMap);
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

pulumi.Output<GetIpPrefixResult> getIpPrefixOutput(
  GetIpPrefixArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getIpPrefix',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpPrefixResult.fromMap);
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

pulumi.Output<GetL2IsolationDomainResult> getL2IsolationDomainOutput(
  GetL2IsolationDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getL2IsolationDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetL2IsolationDomainResult.fromMap);
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

pulumi.Output<GetL3IsolationDomainResult> getL3IsolationDomainOutput(
  GetL3IsolationDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getL3IsolationDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetL3IsolationDomainResult.fromMap);
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

pulumi.Output<GetNeighborGroupResult> getNeighborGroupOutput(
  GetNeighborGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNeighborGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNeighborGroupResult.fromMap);
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

pulumi.Output<GetNetworkBootstrapDeviceResult> getNetworkBootstrapDeviceOutput(
  GetNetworkBootstrapDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkBootstrapDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkBootstrapDeviceResult.fromMap);
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

pulumi.Output<GetNetworkBootstrapInterfaceResult> getNetworkBootstrapInterfaceOutput(
  GetNetworkBootstrapInterfaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkBootstrapInterface',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkBootstrapInterfaceResult.fromMap);
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

pulumi.Output<GetNetworkDeviceResult> getNetworkDeviceOutput(
  GetNetworkDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkDeviceResult.fromMap);
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

pulumi.Output<GetNetworkDeviceStatusResult> getNetworkDeviceStatusOutput(
  GetNetworkDeviceStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkDeviceStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkDeviceStatusResult.fromMap);
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

pulumi.Output<GetNetworkFabricResult> getNetworkFabricOutput(
  GetNetworkFabricArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkFabric',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFabricResult.fromMap);
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

pulumi.Output<GetNetworkFabricControllerResult> getNetworkFabricControllerOutput(
  GetNetworkFabricControllerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkFabricController',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFabricControllerResult.fromMap);
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

pulumi.Output<GetNetworkFabricTopologyResult> getNetworkFabricTopologyOutput(
  GetNetworkFabricTopologyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkFabricTopology',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkFabricTopologyResult.fromMap);
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

pulumi.Output<GetNetworkInterfaceResult> getNetworkInterfaceOutput(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkInterface',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkInterfaceResult.fromMap);
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

pulumi.Output<GetNetworkInterfaceStatusResult> getNetworkInterfaceStatusOutput(
  GetNetworkInterfaceStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkInterfaceStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkInterfaceStatusResult.fromMap);
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

pulumi.Output<GetNetworkMonitorResult> getNetworkMonitorOutput(
  GetNetworkMonitorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkMonitor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkMonitorResult.fromMap);
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

pulumi.Output<GetNetworkPacketBrokerResult> getNetworkPacketBrokerOutput(
  GetNetworkPacketBrokerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkPacketBroker',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPacketBrokerResult.fromMap);
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

pulumi.Output<GetNetworkRackResult> getNetworkRackOutput(
  GetNetworkRackArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkRack',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkRackResult.fromMap);
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

pulumi.Output<GetNetworkTapResult> getNetworkTapOutput(
  GetNetworkTapArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkTap',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkTapResult.fromMap);
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

pulumi.Output<GetNetworkTapRuleResult> getNetworkTapRuleOutput(
  GetNetworkTapRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkTapRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkTapRuleResult.fromMap);
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

pulumi.Output<GetNetworkToNetworkInterconnectResult> getNetworkToNetworkInterconnectOutput(
  GetNetworkToNetworkInterconnectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getNetworkToNetworkInterconnect',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkToNetworkInterconnectResult.fromMap);
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

pulumi.Output<GetRoutePolicyResult> getRoutePolicyOutput(
  GetRoutePolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:managednetworkfabric:getRoutePolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutePolicyResult.fromMap);
}
