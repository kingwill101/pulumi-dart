// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'virtual_network_peering_properties_format_databricks_virtual_network.dart';
import 'virtual_network_peering_properties_format_remote_virtual_network.dart';

/// {@template pulumi_databricks_vnet_peering_args_doc}
/// The set of arguments for VNetPeering.
/// {@endtemplate}
/// {@macro pulumi_databricks_vnet_peering_args_doc}
class VNetPeeringArgs {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  final pulumi.Input<bool>? allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  final pulumi.Input<bool>? allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  final pulumi.Input<bool>? allowVirtualNetworkAccess;
  /// The reference to the databricks virtual network address space.
  final pulumi.Input<AddressSpace>? databricksAddressSpace;
  /// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  final pulumi.Input<VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork>? databricksVirtualNetwork;
  /// The name of the workspace vNet peering.
  final pulumi.Input<String>? peeringName;
  /// The reference to the remote virtual network address space.
  final pulumi.Input<AddressSpace>? remoteAddressSpace;
  /// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  final pulumi.Input<VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork> remoteVirtualNetwork;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  final pulumi.Input<bool>? useRemoteGateways;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [VNetPeeringArgs].
  /// [allowForwardedTraffic] Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  /// [allowGatewayTransit] If gateway links can be used in remote virtual networking to link to this virtual network.
  /// [allowVirtualNetworkAccess] Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  /// [databricksAddressSpace] The reference to the databricks virtual network address space.
  /// [databricksVirtualNetwork] The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  /// [peeringName] The name of the workspace vNet peering.
  /// [remoteAddressSpace] The reference to the remote virtual network address space.
  /// [remoteVirtualNetwork] The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [useRemoteGateways] If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  /// [workspaceName] The name of the workspace.
  VNetPeeringArgs({
    bool? allowForwardedTraffic,
    bool? allowGatewayTransit,
    bool? allowVirtualNetworkAccess,
    AddressSpace? databricksAddressSpace,
    VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork? databricksVirtualNetwork,
    String? peeringName,
    AddressSpace? remoteAddressSpace,
    required VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork remoteVirtualNetwork,
    required String resourceGroupName,
    bool? useRemoteGateways,
    required String workspaceName,
  }) :
      allowForwardedTraffic = pulumi.Input.asOptionalInput<bool>(allowForwardedTraffic),
      allowGatewayTransit = pulumi.Input.asOptionalInput<bool>(allowGatewayTransit),
      allowVirtualNetworkAccess = pulumi.Input.asOptionalInput<bool>(allowVirtualNetworkAccess),
      databricksAddressSpace = pulumi.Input.asOptionalInput<AddressSpace>(databricksAddressSpace),
      databricksVirtualNetwork = pulumi.Input.asOptionalInput<VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork>(databricksVirtualNetwork),
      peeringName = pulumi.Input.asOptionalInput<String>(peeringName),
      remoteAddressSpace = pulumi.Input.asOptionalInput<AddressSpace>(remoteAddressSpace),
      remoteVirtualNetwork = pulumi.Input.asInput<VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork>(remoteVirtualNetwork),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      useRemoteGateways = pulumi.Input.asOptionalInput<bool>(useRemoteGateways),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'databricksAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(databricksAddressSpace, (value) => value.toMap()),
      'databricksVirtualNetwork': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork, Map<String, dynamic>>(databricksVirtualNetwork, (value) => value.toMap()),
      'peeringName': ?peeringName,
      'remoteAddressSpace': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(remoteAddressSpace, (value) => value.toMap()),
      'remoteVirtualNetwork': pulumi.Input.mapInputValue<VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork, Map<String, dynamic>>(remoteVirtualNetwork, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'useRemoteGateways': ?useRemoteGateways,
      'workspaceName': workspaceName,
    };
  }

  factory VNetPeeringArgs.fromMap(Map<String, dynamic> map) {
    return VNetPeeringArgs(
      allowForwardedTraffic: map['allowForwardedTraffic'] == null ? null : map['allowForwardedTraffic'] as bool,
      allowGatewayTransit: map['allowGatewayTransit'] == null ? null : map['allowGatewayTransit'] as bool,
      allowVirtualNetworkAccess: map['allowVirtualNetworkAccess'] == null ? null : map['allowVirtualNetworkAccess'] as bool,
      databricksAddressSpace: map['databricksAddressSpace'] == null ? null : AddressSpace.fromMap((map['databricksAddressSpace'] as Map).cast<String, dynamic>()),
      databricksVirtualNetwork: map['databricksVirtualNetwork'] == null ? null : VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork.fromMap((map['databricksVirtualNetwork'] as Map).cast<String, dynamic>()),
      peeringName: map['peeringName'] == null ? null : map['peeringName'] as String,
      remoteAddressSpace: map['remoteAddressSpace'] == null ? null : AddressSpace.fromMap((map['remoteAddressSpace'] as Map).cast<String, dynamic>()),
      remoteVirtualNetwork: VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork.fromMap((map['remoteVirtualNetwork'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      useRemoteGateways: map['useRemoteGateways'] == null ? null : map['useRemoteGateways'] as bool,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

