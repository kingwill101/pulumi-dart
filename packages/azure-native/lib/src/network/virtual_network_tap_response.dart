// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_ipconfiguration_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'network_interface_tap_configuration_response.dart';

/// Virtual Network Tap resource.
class VirtualNetworkTapResponse {
  /// The reference to the private IP address on the internal Load Balancer that will receive the tap.
  final FrontendIPConfigurationResponse? destinationLoadBalancerFrontEndIPConfiguration;
  /// The reference to the private IP Address of the collector nic that will receive the tap.
  final NetworkInterfaceIPConfigurationResponse? destinationNetworkInterfaceIPConfiguration;
  /// The VXLAN destination port that will receive the tapped traffic.
  final int? destinationPort;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped.
  final List<NetworkInterfaceTapConfigurationResponse> networkInterfaceTapConfigurations;
  /// The provisioning state of the virtual network tap resource.
  final String provisioningState;
  /// The resource GUID property of the virtual network tap resource.
  final String resourceGuid;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [VirtualNetworkTapResponse].
  /// [destinationLoadBalancerFrontEndIPConfiguration] The reference to the private IP address on the internal Load Balancer that will receive the tap.
  /// [destinationNetworkInterfaceIPConfiguration] The reference to the private IP Address of the collector nic that will receive the tap.
  /// [destinationPort] The VXLAN destination port that will receive the tapped traffic.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaceTapConfigurations] Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped.
  /// [provisioningState] The provisioning state of the virtual network tap resource.
  /// [resourceGuid] The resource GUID property of the virtual network tap resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  VirtualNetworkTapResponse({
    this.destinationLoadBalancerFrontEndIPConfiguration,
    this.destinationNetworkInterfaceIPConfiguration,
    this.destinationPort,
    required this.etag,
    this.id,
    this.location,
    required this.name,
    required this.networkInterfaceTapConfigurations,
    required this.provisioningState,
    required this.resourceGuid,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationLoadBalancerFrontEndIPConfiguration': ?destinationLoadBalancerFrontEndIPConfiguration == null ? null : destinationLoadBalancerFrontEndIPConfiguration!.toMap(),
      'destinationNetworkInterfaceIPConfiguration': ?destinationNetworkInterfaceIPConfiguration == null ? null : destinationNetworkInterfaceIPConfiguration!.toMap(),
      'destinationPort': ?destinationPort,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaceTapConfigurations': pulumi.Input.encodeList<NetworkInterfaceTapConfigurationResponse, Map<String, dynamic>>(networkInterfaceTapConfigurations, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'type': type,
    };
  }

  factory VirtualNetworkTapResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkTapResponse(
      destinationLoadBalancerFrontEndIPConfiguration: map['destinationLoadBalancerFrontEndIPConfiguration'] == null ? null : FrontendIPConfigurationResponse.fromMap((map['destinationLoadBalancerFrontEndIPConfiguration'] as Map).cast<String, dynamic>()),
      destinationNetworkInterfaceIPConfiguration: map['destinationNetworkInterfaceIPConfiguration'] == null ? null : NetworkInterfaceIPConfigurationResponse.fromMap((map['destinationNetworkInterfaceIPConfiguration'] as Map).cast<String, dynamic>()),
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      networkInterfaceTapConfigurations: pulumi.Input.decodeList<NetworkInterfaceTapConfigurationResponse>(map['networkInterfaceTapConfigurations'], (value) => NetworkInterfaceTapConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

