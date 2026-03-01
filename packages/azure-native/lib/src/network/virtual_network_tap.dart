// ignore_for_file: unused_element, unnecessary_cast

import 'frontend_ipconfiguration.dart';
import 'network_interface_ipconfiguration.dart';

/// Virtual Network Tap resource.
class VirtualNetworkTap {
  /// The reference to the private IP address on the internal Load Balancer that will receive the tap.
  final FrontendIPConfiguration? destinationLoadBalancerFrontEndIPConfiguration;
  /// The reference to the private IP Address of the collector nic that will receive the tap.
  final NetworkInterfaceIPConfiguration? destinationNetworkInterfaceIPConfiguration;
  /// The VXLAN destination port that will receive the tapped traffic.
  final int? destinationPort;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource tags.
  final Map<String, String>? tags;

  /// Creates a new [VirtualNetworkTap].
  /// [destinationLoadBalancerFrontEndIPConfiguration] The reference to the private IP address on the internal Load Balancer that will receive the tap.
  /// [destinationNetworkInterfaceIPConfiguration] The reference to the private IP Address of the collector nic that will receive the tap.
  /// [destinationPort] The VXLAN destination port that will receive the tapped traffic.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [tags] Resource tags.
  VirtualNetworkTap({
    this.destinationLoadBalancerFrontEndIPConfiguration,
    this.destinationNetworkInterfaceIPConfiguration,
    this.destinationPort,
    this.id,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationLoadBalancerFrontEndIPConfiguration': ?destinationLoadBalancerFrontEndIPConfiguration == null ? null : destinationLoadBalancerFrontEndIPConfiguration!.toMap(),
      'destinationNetworkInterfaceIPConfiguration': ?destinationNetworkInterfaceIPConfiguration == null ? null : destinationNetworkInterfaceIPConfiguration!.toMap(),
      'destinationPort': ?destinationPort,
      'id': ?id,
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory VirtualNetworkTap.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkTap(
      destinationLoadBalancerFrontEndIPConfiguration: map['destinationLoadBalancerFrontEndIPConfiguration'] == null ? null : FrontendIPConfiguration.fromMap((map['destinationLoadBalancerFrontEndIPConfiguration'] as Map).cast<String, dynamic>()),
      destinationNetworkInterfaceIPConfiguration: map['destinationNetworkInterfaceIPConfiguration'] == null ? null : NetworkInterfaceIPConfiguration.fromMap((map['destinationNetworkInterfaceIPConfiguration'] as Map).cast<String, dynamic>()),
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

