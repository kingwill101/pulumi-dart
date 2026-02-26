// ignore_for_file: unused_element, unnecessary_cast

class EndpointConfigurationProductionVariantRoutingConfig {
  /// How the endpoint routes incoming traffic. Valid values are `LEAST_OUTSTANDING_REQUESTS` and `RANDOM`. `LEAST_OUTSTANDING_REQUESTS` routes requests to the specific instances that have more capacity to process them. `RANDOM` routes each request to a randomly chosen instance.
  final String routingStrategy;

  EndpointConfigurationProductionVariantRoutingConfig({
    required this.routingStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['routingStrategy'] = routingStrategy;
    return map;
  }

  factory EndpointConfigurationProductionVariantRoutingConfig.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationProductionVariantRoutingConfig(
      routingStrategy: map['routingStrategy'] as String,
    );
  }
}
