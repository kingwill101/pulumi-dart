// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_backend_address_properties_response.dart';

/// LoadBalancer Backend Address
class LoadBalancerBackendAddressResponse {
  /// name of the backend address
  final String name;
  /// backend address properties
  final LoadBalancerBackendAddressPropertiesResponse properties;

  /// Creates a new [LoadBalancerBackendAddressResponse].
  /// [name] name of the backend address
  /// [properties] backend address properties
  LoadBalancerBackendAddressResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory LoadBalancerBackendAddressResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressResponse(
      name: map['name'] as String,
      properties: LoadBalancerBackendAddressPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

