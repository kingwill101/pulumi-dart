// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_properties_response.dart';

/// Backend address pool for the load balancer.
class BackendAddressPoolResponse {
  /// name of the backend pool.
  final pulumi.Input<String> name;
  /// properties for the backend pool
  final pulumi.Input<BackendAddressPoolPropertiesResponse> properties;

  /// Creates a new [BackendAddressPoolResponse].
  /// [name] name of the backend pool.
  /// [properties] properties for the backend pool
  const BackendAddressPoolResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.mapInputValue<BackendAddressPoolPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory BackendAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(BackendAddressPoolPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

