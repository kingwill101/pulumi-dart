// ignore_for_file: unused_element, unnecessary_cast


/// NGroups load balancer backend address pool
class LoadBalancerBackendAddressPool {
  /// The Load Balancer backend address pool ARM resource Id.
  final String? resource;

  /// Creates a new [LoadBalancerBackendAddressPool].
  /// [resource] The Load Balancer backend address pool ARM resource Id.
  LoadBalancerBackendAddressPool({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource,
    };
  }

  factory LoadBalancerBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPool(
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}

