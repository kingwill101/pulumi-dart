// ignore_for_file: unused_element, unnecessary_cast

import 'address_space_response.dart';
import 'virtual_network_peering_properties_format_response_databricks_virtual_network.dart';
import 'virtual_network_peering_properties_format_response_remote_virtual_network.dart';

/// Result data returned by getVNetPeering.
class GetVNetPeeringResult {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  final bool? allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  final bool? allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  final bool? allowVirtualNetworkAccess;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The reference to the databricks virtual network address space.
  final AddressSpaceResponse? databricksAddressSpace;
  /// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  final VirtualNetworkPeeringPropertiesFormatResponseDatabricksVirtualNetwork? databricksVirtualNetwork;
  /// Resource ID.
  final String id;
  /// Name of the virtual network peering resource
  final String name;
  /// The status of the virtual network peering.
  final String peeringState;
  /// The provisioning state of the virtual network peering resource.
  final String provisioningState;
  /// The reference to the remote virtual network address space.
  final AddressSpaceResponse? remoteAddressSpace;
  /// The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  final VirtualNetworkPeeringPropertiesFormatResponseRemoteVirtualNetwork remoteVirtualNetwork;
  /// type of the virtual network peering resource
  final String type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  final bool? useRemoteGateways;

  /// Creates a new [GetVNetPeeringResult].
  /// [allowForwardedTraffic] Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  /// [allowGatewayTransit] If gateway links can be used in remote virtual networking to link to this virtual network.
  /// [allowVirtualNetworkAccess] Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databricksAddressSpace] The reference to the databricks virtual network address space.
  /// [databricksVirtualNetwork] The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  /// [id] Resource ID.
  /// [name] Name of the virtual network peering resource
  /// [peeringState] The status of the virtual network peering.
  /// [provisioningState] The provisioning state of the virtual network peering resource.
  /// [remoteAddressSpace] The reference to the remote virtual network address space.
  /// [remoteVirtualNetwork] The remote virtual network should be in the same region. See here to learn more (https://docs.microsoft.com/en-us/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering).
  /// [type] type of the virtual network peering resource
  /// [useRemoteGateways] If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  const GetVNetPeeringResult({
    this.allowForwardedTraffic,
    this.allowGatewayTransit,
    this.allowVirtualNetworkAccess,
    required this.azureApiVersion,
    this.databricksAddressSpace,
    this.databricksVirtualNetwork,
    required this.id,
    required this.name,
    required this.peeringState,
    required this.provisioningState,
    this.remoteAddressSpace,
    required this.remoteVirtualNetwork,
    required this.type,
    this.useRemoteGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowForwardedTraffic': ?allowForwardedTraffic,
      'allowGatewayTransit': ?allowGatewayTransit,
      'allowVirtualNetworkAccess': ?allowVirtualNetworkAccess,
      'azureApiVersion': azureApiVersion,
      'databricksAddressSpace': ?databricksAddressSpace?.toMap(),
      'databricksVirtualNetwork': ?databricksVirtualNetwork?.toMap(),
      'id': id,
      'name': name,
      'peeringState': peeringState,
      'provisioningState': provisioningState,
      'remoteAddressSpace': ?remoteAddressSpace?.toMap(),
      'remoteVirtualNetwork': remoteVirtualNetwork.toMap(),
      'type': type,
      'useRemoteGateways': ?useRemoteGateways,
    };
  }

  factory GetVNetPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetVNetPeeringResult(
      allowForwardedTraffic: (() { final guardedValue = map['allowForwardedTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowGatewayTransit: (() { final guardedValue = map['allowGatewayTransit']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowVirtualNetworkAccess: (() { final guardedValue = map['allowVirtualNetworkAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      databricksAddressSpace: (() { final guardedValue = map['databricksAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      databricksVirtualNetwork: (() { final guardedValue = map['databricksVirtualNetwork']; if (guardedValue == null) return null; return VirtualNetworkPeeringPropertiesFormatResponseDatabricksVirtualNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      peeringState: map['peeringState'] as String,
      provisioningState: map['provisioningState'] as String,
      remoteAddressSpace: (() { final guardedValue = map['remoteAddressSpace']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remoteVirtualNetwork: VirtualNetworkPeeringPropertiesFormatResponseRemoteVirtualNetwork.fromMap((map['remoteVirtualNetwork']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useRemoteGateways: (() { final guardedValue = map['useRemoteGateways']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

