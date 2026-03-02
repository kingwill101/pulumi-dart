// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_backend_address_properties.dart';

/// LoadBalancer Backend Address
class LoadBalancerBackendAddress {
  /// name of the backend address
  final pulumi.Input<String> name;
  /// backend address properties
  final pulumi.Input<LoadBalancerBackendAddressProperties> properties;

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
      'properties': pulumi.Input.mapInputValue<LoadBalancerBackendAddressProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory LoadBalancerBackendAddress.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddress(
      name: (map['name'] as String).input(),
      properties: (LoadBalancerBackendAddressProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

