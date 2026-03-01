// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagerRoutingRuleDestination {
  /// The destination address.
  final String address;
  /// The type of destination. Possible values are `AddressPrefix` and `ServiceTag`.
  final String type;

  /// Creates a new [NetworkManagerRoutingRuleDestination].
  /// [address] The destination address.
  /// [type] The type of destination. Possible values are `AddressPrefix` and `ServiceTag`.
  NetworkManagerRoutingRuleDestination({
    required this.address,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'type': type,
    };
  }

  factory NetworkManagerRoutingRuleDestination.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingRuleDestination(
      address: map['address'] as String,
      type: map['type'] as String,
    );
  }
}

