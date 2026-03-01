// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_response.dart';
import 'logical_network_arm_reference_response.dart';
import 'virtual_network_arm_reference_response.dart';

/// Backend address pool for the load balancer.
class BackendAddressPoolPropertiesResponse {
  /// List of backend addresses for the backend pool
  final List<LoadBalancerBackendAddressResponse>? loadBalancerBackendAddresses;
  /// Reference to the logical network for this backend pool. Mutually exclusive with virtualNetwork
  final LogicalNetworkArmReferenceResponse? logicalNetwork;
  /// Reference to the virtual network for this backend pool. Mutually exclusive with logicalNetwork
  final VirtualNetworkArmReferenceResponse? virtualNetwork;

  /// Creates a new [BackendAddressPoolPropertiesResponse].
  /// [loadBalancerBackendAddresses] List of backend addresses for the backend pool
  /// [logicalNetwork] Reference to the logical network for this backend pool. Mutually exclusive with virtualNetwork
  /// [virtualNetwork] Reference to the virtual network for this backend pool. Mutually exclusive with logicalNetwork
  BackendAddressPoolPropertiesResponse({
    this.loadBalancerBackendAddresses,
    this.logicalNetwork,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerBackendAddresses': ?loadBalancerBackendAddresses == null ? null : pulumi.Input.encodeList<LoadBalancerBackendAddressResponse, Map<String, dynamic>>(loadBalancerBackendAddresses!, (value) => value.toMap()),
      'logicalNetwork': ?logicalNetwork == null ? null : logicalNetwork!.toMap(),
      'virtualNetwork': ?virtualNetwork == null ? null : virtualNetwork!.toMap(),
    };
  }

  factory BackendAddressPoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolPropertiesResponse(
      loadBalancerBackendAddresses: map['loadBalancerBackendAddresses'] == null ? null : pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(map['loadBalancerBackendAddresses'], (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      logicalNetwork: map['logicalNetwork'] == null ? null : LogicalNetworkArmReferenceResponse.fromMap((map['logicalNetwork'] as Map).cast<String, dynamic>()),
      virtualNetwork: map['virtualNetwork'] == null ? null : VirtualNetworkArmReferenceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

