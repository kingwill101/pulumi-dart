// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a LoadBalancer backend address pool reference
class LoadBalancerBackendAddressPoolReference {
  /// name of the backend address pool
  final String name;

  /// Creates a new [LoadBalancerBackendAddressPoolReference].
  /// [name] name of the backend address pool
  LoadBalancerBackendAddressPoolReference({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerBackendAddressPoolReference.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolReference(
      name: map['name'] as String,
    );
  }
}

