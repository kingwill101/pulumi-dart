// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointConfigurationShadowProductionVariantRoutingConfig {
  /// How the endpoint routes incoming traffic. Valid values are `LEAST_OUTSTANDING_REQUESTS` and `RANDOM`. `LEAST_OUTSTANDING_REQUESTS` routes requests to the specific instances that have more capacity to process them. `RANDOM` routes each request to a randomly chosen instance.
  final pulumi.Input<String> routingStrategy;

  /// Creates a new [EndpointConfigurationShadowProductionVariantRoutingConfig].
  /// [routingStrategy] How the endpoint routes incoming traffic. Valid values are `LEAST_OUTSTANDING_REQUESTS` and `RANDOM`. `LEAST_OUTSTANDING_REQUESTS` routes requests to the specific instances that have more capacity to process them. `RANDOM` routes each request to a randomly chosen instance.
  const EndpointConfigurationShadowProductionVariantRoutingConfig({
    required this.routingStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routingStrategy': routingStrategy,
    };
  }

  factory EndpointConfigurationShadowProductionVariantRoutingConfig.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationShadowProductionVariantRoutingConfig(
      routingStrategy: pulumi.Input.fromValue(map['routingStrategy'] as String),
    );
  }
}

