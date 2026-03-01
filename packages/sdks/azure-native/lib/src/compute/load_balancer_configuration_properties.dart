// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_frontend_ip_configuration.dart';

/// Describes the properties of the load balancer configuration.
class LoadBalancerConfigurationProperties {
  /// Specifies the frontend IP to be used for the load balancer. Only IPv4 frontend IP address is supported. Each load balancer configuration must have exactly one frontend IP configuration.
  final List<LoadBalancerFrontendIpConfiguration> frontendIpConfigurations;

  /// Creates a new [LoadBalancerConfigurationProperties].
  /// [frontendIpConfigurations] Specifies the frontend IP to be used for the load balancer. Only IPv4 frontend IP address is supported. Each load balancer configuration must have exactly one frontend IP configuration.
  LoadBalancerConfigurationProperties({
    required this.frontendIpConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendIpConfigurations': pulumi.Input.encodeList<LoadBalancerFrontendIpConfiguration, Map<String, dynamic>>(frontendIpConfigurations, (value) => value.toMap()),
    };
  }

  factory LoadBalancerConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigurationProperties(
      frontendIpConfigurations: pulumi.Input.decodeList<LoadBalancerFrontendIpConfiguration>(map['frontendIpConfigurations'], (value) => LoadBalancerFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

