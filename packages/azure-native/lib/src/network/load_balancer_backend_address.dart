// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Load balancer backend addresses.
class LoadBalancerBackendAddress {
  /// A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  final String? adminState;
  /// IP Address belonging to the referenced virtual network.
  final String? ipAddress;
  /// Reference to the frontend ip address configuration defined in regional loadbalancer.
  final SubResource? loadBalancerFrontendIPConfiguration;
  /// Name of the backend address.
  final String? name;
  /// Reference to an existing subnet.
  final SubResource? subnet;
  /// Reference to an existing virtual network.
  final SubResource? virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddress].
  /// [adminState] A list of administrative states which once set can override health probe so that Load Balancer will always forward new connections to backend, or deny new connections and reset existing connections.
  /// [ipAddress] IP Address belonging to the referenced virtual network.
  /// [loadBalancerFrontendIPConfiguration] Reference to the frontend ip address configuration defined in regional loadbalancer.
  /// [name] Name of the backend address.
  /// [subnet] Reference to an existing subnet.
  /// [virtualNetwork] Reference to an existing virtual network.
  LoadBalancerBackendAddress({
    this.adminState,
    this.ipAddress,
    this.loadBalancerFrontendIPConfiguration,
    this.name,
    this.subnet,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminState': ?adminState,
      'ipAddress': ?ipAddress,
      'loadBalancerFrontendIPConfiguration': ?loadBalancerFrontendIPConfiguration == null ? null : loadBalancerFrontendIPConfiguration!.toMap(),
      'name': ?name,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'virtualNetwork': ?virtualNetwork == null ? null : virtualNetwork!.toMap(),
    };
  }

  factory LoadBalancerBackendAddress.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddress(
      adminState: map['adminState'] == null ? null : map['adminState'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      loadBalancerFrontendIPConfiguration: map['loadBalancerFrontendIPConfiguration'] == null ? null : SubResource.fromMap((map['loadBalancerFrontendIPConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      subnet: map['subnet'] == null ? null : SubResource.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      virtualNetwork: map['virtualNetwork'] == null ? null : SubResource.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

