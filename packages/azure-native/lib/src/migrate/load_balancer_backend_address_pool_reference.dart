// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference to load balancer backend address pools.
class LoadBalancerBackendAddressPoolReference {
  /// Gets the name of the proxy resource on the target side.
  final String? name;
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final String sourceArmResourceId;

  /// Creates a new [LoadBalancerBackendAddressPoolReference].
  /// [name] Gets the name of the proxy resource on the target side.
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  LoadBalancerBackendAddressPoolReference({
    this.name,
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory LoadBalancerBackendAddressPoolReference.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolReference(
      name: map['name'] == null ? null : map['name'] as String,
      sourceArmResourceId: map['sourceArmResourceId'] as String,
    );
  }
}

