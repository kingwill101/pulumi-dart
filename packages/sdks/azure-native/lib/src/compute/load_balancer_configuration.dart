// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_configuration_properties.dart';

/// Describes the load balancer configuration.
class LoadBalancerConfiguration {
  /// Resource Id
  final pulumi.Input<String>? id;
  /// The name of the Load balancer
  final pulumi.Input<String> name;
  /// Properties of the load balancer configuration.
  final pulumi.Input<LoadBalancerConfigurationProperties> properties;

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
      'properties': pulumi.Input.mapInputValue<LoadBalancerConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory LoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfiguration(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      properties: (LoadBalancerConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

