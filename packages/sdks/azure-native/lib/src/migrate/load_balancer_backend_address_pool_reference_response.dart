// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference to load balancer backend address pools.
class LoadBalancerBackendAddressPoolReferenceResponse {
  /// Gets the name of the proxy resource on the target side.
  final String? name;
  /// Gets the ARM resource ID of the tracked resource being referenced.
  final String sourceArmResourceId;

  /// Creates a new [LoadBalancerBackendAddressPoolReferenceResponse].
  /// [name] Gets the name of the proxy resource on the target side.
  /// [sourceArmResourceId] Gets the ARM resource ID of the tracked resource being referenced.
  LoadBalancerBackendAddressPoolReferenceResponse({
    this.name,
    required this.sourceArmResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'sourceArmResourceId': sourceArmResourceId,
    };
  }

  factory LoadBalancerBackendAddressPoolReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolReferenceResponse(
      name: map['name'] == null ? null : map['name'] as String,
      sourceArmResourceId: map['sourceArmResourceId'] as String,
    );
  }
}

