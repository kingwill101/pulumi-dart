// ignore_for_file: unused_element, unnecessary_cast


/// Route destination.
class RoutingRuleRouteDestination {
  /// Destination address.
  final String destinationAddress;
  /// Destination type.
  final String type;

  /// Creates a new [RoutingRuleRouteDestination].
  /// [destinationAddress] Destination address.
  /// [type] Destination type.
  RoutingRuleRouteDestination({
    required this.destinationAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': destinationAddress,
      'type': type,
    };
  }

  factory RoutingRuleRouteDestination.fromMap(Map<String, dynamic> map) {
    return RoutingRuleRouteDestination(
      destinationAddress: map['destinationAddress'] as String,
      type: map['type'] as String,
    );
  }
}

