// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address.dart';
import 'logical_network_arm_reference.dart';
import 'virtual_network_arm_reference.dart';

/// Backend address pool for the load balancer.
class BackendAddressPoolProperties {
  /// List of backend addresses for the backend pool
  final pulumi.Input<List<LoadBalancerBackendAddress>>? loadBalancerBackendAddresses;
  /// Reference to the logical network for this backend pool. Mutually exclusive with virtualNetwork
  final pulumi.Input<LogicalNetworkArmReference>? logicalNetwork;
  /// Reference to the virtual network for this backend pool. Mutually exclusive with logicalNetwork
  final pulumi.Input<VirtualNetworkArmReference>? virtualNetwork;

  /// Creates a new [BackendAddressPoolProperties].
  /// [loadBalancerBackendAddresses] List of backend addresses for the backend pool
  /// [logicalNetwork] Reference to the logical network for this backend pool. Mutually exclusive with virtualNetwork
  /// [virtualNetwork] Reference to the virtual network for this backend pool. Mutually exclusive with logicalNetwork
  BackendAddressPoolProperties({
    this.loadBalancerBackendAddresses,
    this.logicalNetwork,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerBackendAddresses': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddress>, List<Map<String, dynamic>>>(loadBalancerBackendAddresses, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalNetwork': ?pulumi.Input.mapOptionalInputValue<LogicalNetworkArmReference, Map<String, dynamic>>(logicalNetwork, (value) => value.toMap()),
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkArmReference, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory BackendAddressPoolProperties.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolProperties(
      loadBalancerBackendAddresses: map['loadBalancerBackendAddresses'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendAddress>(map['loadBalancerBackendAddresses'], (value) => LoadBalancerBackendAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logicalNetwork: map['logicalNetwork'] == null ? null : (LogicalNetworkArmReference.fromMap((map['logicalNetwork'] as Map).cast<String, dynamic>())).input(),
      virtualNetwork: map['virtualNetwork'] == null ? null : (VirtualNetworkArmReference.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

