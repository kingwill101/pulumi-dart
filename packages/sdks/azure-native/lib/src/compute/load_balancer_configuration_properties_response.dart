// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_frontend_ip_configuration_response.dart';

/// Describes the properties of the load balancer configuration.
class LoadBalancerConfigurationPropertiesResponse {
  /// Specifies the frontend IP to be used for the load balancer. Only IPv4 frontend IP address is supported. Each load balancer configuration must have exactly one frontend IP configuration.
  final pulumi.Input<List<LoadBalancerFrontendIpConfigurationResponse>> frontendIpConfigurations;

  /// Creates a new [LoadBalancerConfigurationPropertiesResponse].
  /// [frontendIpConfigurations] Specifies the frontend IP to be used for the load balancer. Only IPv4 frontend IP address is supported. Each load balancer configuration must have exactly one frontend IP configuration.
  LoadBalancerConfigurationPropertiesResponse({
    required this.frontendIpConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendIpConfigurations': pulumi.Input.mapInputValue<List<LoadBalancerFrontendIpConfigurationResponse>, List<Map<String, dynamic>>>(frontendIpConfigurations, (value) => pulumi.Input.encodeList<LoadBalancerFrontendIpConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerConfigurationPropertiesResponse(
      frontendIpConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerFrontendIpConfigurationResponse>(map['frontendIpConfigurations']!, (value) => LoadBalancerFrontendIpConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

