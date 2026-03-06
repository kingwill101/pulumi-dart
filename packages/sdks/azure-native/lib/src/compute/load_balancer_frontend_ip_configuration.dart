// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_frontend_ip_configuration_properties.dart';

/// Specifies the frontend IP to be used for the load balancer. Only IPv4 frontend IP address is supported. Each load balancer configuration must have exactly one frontend IP configuration.
class LoadBalancerFrontendIpConfiguration {
  /// The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String> name;
  /// Properties of load balancer frontend ip configuration.
  final pulumi.Input<LoadBalancerFrontendIpConfigurationProperties> properties;

  /// Creates a new [LoadBalancerFrontendIpConfiguration].
  /// [name] The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  /// [properties] Properties of load balancer frontend ip configuration.
  const LoadBalancerFrontendIpConfiguration({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': pulumi.Input.mapInputValue<LoadBalancerFrontendIpConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory LoadBalancerFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(LoadBalancerFrontendIpConfigurationProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

