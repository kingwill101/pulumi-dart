// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_pool.dart';

/// LoadBalancer the CG profile will use to interact with CGs in a backend pool
class LoadBalancer {
  /// List of Load Balancer Backend Address Pools.
  final List<LoadBalancerBackendAddressPool>? backendAddressPools;

  /// Creates a new [LoadBalancer].
  /// [backendAddressPools] List of Load Balancer Backend Address Pools.
  LoadBalancer({
    this.backendAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<LoadBalancerBackendAddressPool, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
    };
  }

  factory LoadBalancer.fromMap(Map<String, dynamic> map) {
    return LoadBalancer(
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<LoadBalancerBackendAddressPool>(map['backendAddressPools'], (value) => LoadBalancerBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

