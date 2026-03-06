// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to a LoadBalancer backend address pool reference
class LoadBalancerBackendAddressPoolReferenceResponse {
  /// name of the backend address pool
  final pulumi.Input<String> name;

  /// Creates a new [LoadBalancerBackendAddressPoolReferenceResponse].
  /// [name] name of the backend address pool
  const LoadBalancerBackendAddressPoolReferenceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory LoadBalancerBackendAddressPoolReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolReferenceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

