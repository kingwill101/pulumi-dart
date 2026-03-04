// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_properties.dart';

/// Backend address pool for the load balancer.
class BackendAddressPool {
  /// name of the backend pool.
  final pulumi.Input<String> name;

  /// properties for the backend pool
  final pulumi.Input<BackendAddressPoolProperties> properties;

  /// Creates a new [BackendAddressPool].
  /// [name] name of the backend pool.
  /// [properties] properties for the backend pool
  BackendAddressPool({required this.name, required this.properties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties':
          pulumi.Input.mapInputValue<
            BackendAddressPoolProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
    };
  }

  factory BackendAddressPool.fromMap(Map<String, dynamic> map) {
    return BackendAddressPool(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(
        BackendAddressPoolProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
