// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_response.dart';
import 'logical_network_arm_reference_response.dart';
import 'virtual_network_arm_reference_response.dart';

/// Backend address pool for the load balancer.
class BackendAddressPoolPropertiesResponse {
  /// List of backend addresses for the backend pool
  final pulumi.Input<List<LoadBalancerBackendAddressResponse>?>? loadBalancerBackendAddresses;
  /// Reference to the logical network for this backend pool. Mutually exclusive with virtualNetwork
  final pulumi.Input<LogicalNetworkArmReferenceResponse?>? logicalNetwork;
  /// Reference to the virtual network for this backend pool. Mutually exclusive with logicalNetwork
  final pulumi.Input<VirtualNetworkArmReferenceResponse?>? virtualNetwork;

  /// Creates a new [BackendAddressPoolPropertiesResponse].
  /// [loadBalancerBackendAddresses] List of backend addresses for the backend pool
  /// [logicalNetwork] Reference to the logical network for this backend pool. Mutually exclusive with virtualNetwork
  /// [virtualNetwork] Reference to the virtual network for this backend pool. Mutually exclusive with logicalNetwork
  const BackendAddressPoolPropertiesResponse({
    this.loadBalancerBackendAddresses,
    this.logicalNetwork,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerBackendAddresses': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddressResponse>, List<Map<String, dynamic>>>(loadBalancerBackendAddresses, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalNetwork': ?pulumi.Input.mapOptionalInputValue<LogicalNetworkArmReferenceResponse, Map<String, dynamic>>(logicalNetwork, (value) => value.toMap()),
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkArmReferenceResponse, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory BackendAddressPoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolPropertiesResponse(
      loadBalancerBackendAddresses: (() { final guardedValue = map['loadBalancerBackendAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(guardedValue, (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logicalNetwork: (() { final guardedValue = map['logicalNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogicalNetworkArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkArmReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
