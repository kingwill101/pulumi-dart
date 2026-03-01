// ignore_for_file: unused_element, unnecessary_cast

import 'backend_address_pool_properties.dart';

/// Backend address pool for the load balancer.
class BackendAddressPool {
  /// name of the backend pool.
  final String name;
  /// properties for the backend pool
  final BackendAddressPoolProperties properties;

  /// Creates a new [BackendAddressPool].
  /// [name] name of the backend pool.
  /// [properties] properties for the backend pool
  BackendAddressPool({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory BackendAddressPool.fromMap(Map<String, dynamic> map) {
    return BackendAddressPool(
      name: map['name'] as String,
      properties: BackendAddressPoolProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

