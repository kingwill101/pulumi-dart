// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a LoadBalancer backend address pool reference
class LoadBalancerBackendAddressPoolReferenceResponse {
  /// name of the backend address pool
  final String name;

  /// Creates a new [LoadBalancerBackendAddressPoolReferenceResponse].
  /// [name] name of the backend address pool
  LoadBalancerBackendAddressPoolReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerBackendAddressPoolReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolReferenceResponse(
      name: map['name'] as String,
    );
  }
}

