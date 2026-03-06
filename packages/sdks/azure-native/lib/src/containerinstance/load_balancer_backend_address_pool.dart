// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NGroups load balancer backend address pool
class LoadBalancerBackendAddressPool {
  /// The Load Balancer backend address pool ARM resource Id.
  final pulumi.Input<String>? resource;

  /// Creates a new [LoadBalancerBackendAddressPool].
  /// [resource] The Load Balancer backend address pool ARM resource Id.
  const LoadBalancerBackendAddressPool({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory LoadBalancerBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPool(
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

