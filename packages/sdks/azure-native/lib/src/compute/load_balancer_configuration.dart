// ignore_for_file: unused_element, unnecessary_cast

import 'load_balancer_configuration_properties.dart';

/// Describes the load balancer configuration.
class LoadBalancerConfiguration {
  /// Resource Id
  final String? id;
  /// The name of the Load balancer
  final String name;
  /// Properties of the load balancer configuration.
  final LoadBalancerConfigurationProperties properties;

  /// Creates a new [LoadBalancerConfiguration].
  /// [id] Resource Id
  /// [name] The name of the Load balancer
  /// [properties] Properties of the load balancer configuration.
  LoadBalancerConfiguration({
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

  factory LoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      properties: LoadBalancerConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

