// ignore_for_file: unused_element, unnecessary_cast

import 'backend_address_pool_properties_response.dart';

/// Backend address pool for the load balancer.
class BackendAddressPoolResponse {
  /// name of the backend pool.
  final String name;
  /// properties for the backend pool
  final BackendAddressPoolPropertiesResponse properties;

  /// Creates a new [BackendAddressPoolResponse].
  /// [name] name of the backend pool.
  /// [properties] properties for the backend pool
  BackendAddressPoolResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory BackendAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolResponse(
      name: map['name'] as String,
      properties: BackendAddressPoolPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

