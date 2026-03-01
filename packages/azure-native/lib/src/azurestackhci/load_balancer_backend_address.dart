// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_backend_address_properties.dart';

/// LoadBalancer Backend Address
class LoadBalancerBackendAddress {
  /// name of the backend address
  final String name;
  /// backend address properties
  final LoadBalancerBackendAddressProperties properties;

  /// Creates a new [LoadBalancerBackendAddress].
  /// [name] name of the backend address
  /// [properties] backend address properties
  LoadBalancerBackendAddress({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory LoadBalancerBackendAddress.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddress(
      name: map['name'] as String,
      properties: LoadBalancerBackendAddressProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

