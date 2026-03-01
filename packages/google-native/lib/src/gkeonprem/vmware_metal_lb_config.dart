// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_address_pool.dart';

/// Represents configuration parameters for the MetalLB load balancer.
class VmwareMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final List<VmwareAddressPool> addressPools;

  /// Creates a new [VmwareMetalLbConfig].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  VmwareMetalLbConfig({required this.addressPools});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools':
          pulumi.Input.encodeList<VmwareAddressPool, Map<String, dynamic>>(
            addressPools,
            (value) => value.toMap(),
          ),
    };
  }

  factory VmwareMetalLbConfig.fromMap(Map<String, dynamic> map) {
    return VmwareMetalLbConfig(
      addressPools: pulumi.Input.decodeList<VmwareAddressPool>(
        map['addressPools'],
        (value) =>
            VmwareAddressPool.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
