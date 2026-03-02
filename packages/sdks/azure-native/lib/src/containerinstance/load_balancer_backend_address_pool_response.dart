// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NGroups load balancer backend address pool
class LoadBalancerBackendAddressPoolResponse {
  /// The Load Balancer backend address pool ARM resource Id.
  final pulumi.Input<String>? resource;

  /// Creates a new [LoadBalancerBackendAddressPoolResponse].
  /// [resource] The Load Balancer backend address pool ARM resource Id.
  LoadBalancerBackendAddressPoolResponse({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory LoadBalancerBackendAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolResponse(
      resource: map['resource'] == null ? null : (map['resource']! as String).input(),
    );
  }
}

