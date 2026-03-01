// ignore_for_file: unused_element, unnecessary_cast


/// Route destination.
class RoutingRuleRouteDestinationResponse {
  /// Destination address.
  final String destinationAddress;
  /// Destination type.
  final String type;

  /// Creates a new [RoutingRuleRouteDestinationResponse].
  /// [destinationAddress] Destination address.
  /// [type] Destination type.
  RoutingRuleRouteDestinationResponse({
    required this.destinationAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'type': type,
    };
  }

  factory RoutingRuleRouteDestinationResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleRouteDestinationResponse(
      destinationAddress: map['destinationAddress'] as String,
      type: map['type'] as String,
    );
  }
}

