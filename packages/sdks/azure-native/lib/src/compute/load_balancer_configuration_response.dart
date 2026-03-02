// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_configuration_properties_response.dart';

/// Describes the load balancer configuration.
class LoadBalancerConfigurationResponse {
  /// Resource Id
  final pulumi.Input<String>? id;
  /// The name of the Load balancer
  final pulumi.Input<String> name;
  /// Properties of the load balancer configuration.
  final pulumi.Input<LoadBalancerConfigurationPropertiesResponse> properties;

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
      'properties': pulumi.Input.mapInputValue<LoadBalancerConfigurationPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory LoadBalancerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigurationResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      properties: (LoadBalancerConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

