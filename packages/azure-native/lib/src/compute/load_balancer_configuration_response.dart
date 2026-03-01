// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_configuration_properties_response.dart';

/// Describes the load balancer configuration.
class LoadBalancerConfigurationResponse {
  /// Resource Id
  final String? id;
  /// The name of the Load balancer
  final String name;
  /// Properties of the load balancer configuration.
  final LoadBalancerConfigurationPropertiesResponse properties;

  /// Creates a new [LoadBalancerConfigurationResponse].
  /// [id] Resource Id
  /// [name] The name of the Load balancer
  /// [properties] Properties of the load balancer configuration.
  LoadBalancerConfigurationResponse({
    this.id,
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory LoadBalancerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigurationResponse(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      properties: LoadBalancerConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

