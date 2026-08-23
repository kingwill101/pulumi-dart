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
  const VNetPeeringArgs({
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    this.databricksAddressSpace,
    this.databricksVirtualNetwork,
    this.peeringName,
    this.remoteAddressSpace,
    required this.remoteVirtualNetwork,
    required this.resourceGroupName,
    this.useRemoteGateways,
    required this.workspaceName,
  });

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
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      databricksAddressSpace: (() { final guardedValue = map['databricksAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databricksVirtualNetwork: (() { final guardedValue = map['databricksVirtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPeeringPropertiesFormatDatabricksVirtualNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      peeringName: (() { final guardedValue = map['peeringName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAddressSpace: (() { final guardedValue = map['remoteAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      remoteVirtualNetwork: pulumi.Input.fromValue(VirtualNetworkPeeringPropertiesFormatRemoteVirtualNetwork.fromMap((map['remoteVirtualNetwork']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
