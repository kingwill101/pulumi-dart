// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_tap_response.dart';

/// Tap configuration in a Network Interface.
class NetworkInterfaceTapConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the network interface tap configuration resource.
  final String provisioningState;
  /// Sub Resource type.
  final String type;
  /// The reference to the Virtual Network Tap resource.
  final VirtualNetworkTapResponse? virtualNetworkTap;

  /// Creates a new [NetworkInterfaceTapConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the network interface tap configuration resource.
  /// [type] Sub Resource type.
  /// [virtualNetworkTap] The reference to the Virtual Network Tap resource.
  NetworkInterfaceTapConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
    this.virtualNetworkTap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'virtualNetworkTap': ?virtualNetworkTap == null ? null : virtualNetworkTap!.toMap(),
    };
  }

  factory NetworkInterfaceTapConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceTapConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
      virtualNetworkTap: map['virtualNetworkTap'] == null ? null : VirtualNetworkTapResponse.fromMap((map['virtualNetworkTap'] as Map).cast<String, dynamic>()),
    );
  }
}

