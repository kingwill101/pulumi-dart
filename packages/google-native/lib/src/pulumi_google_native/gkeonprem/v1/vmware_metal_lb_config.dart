// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'vmware_address_pool.dart';

/// Represents configuration parameters for the MetalLB load balancer.
class VmwareMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final List<VmwareAddressPool> addressPools;

  VmwareMetalLbConfig({
    required this.addressPools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressPools'] =
        Input.encodeList<VmwareAddressPool, Map<String, dynamic>>(
            addressPools, (value) => value.toMap());
    return map;
  }

  factory VmwareMetalLbConfig.fromMap(Map<String, dynamic> map) {
    return VmwareMetalLbConfig(
      addressPools: Input.decodeList<VmwareAddressPool>(
          map['addressPools'],
          (value) => VmwareAddressPool.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
