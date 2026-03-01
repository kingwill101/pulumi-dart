// ignore_for_file: unused_element, unnecessary_cast


class HciLogicalNetworkSubnetRoute {
  /// The Address in CIDR notation. Changing this forces a new resource to be created.
  final String addressPrefix;
  /// The name of the route. Changing this forces a new resource to be created.
  final String? name;
  /// The IPv4 address of the next hop. Changing this forces a new resource to be created.
  final String nextHopIpAddress;

  /// Creates a new [HciLogicalNetworkSubnetRoute].
  /// [addressPrefix] The Address in CIDR notation. Changing this forces a new resource to be created.
  /// [name] The name of the route. Changing this forces a new resource to be created.
  /// [nextHopIpAddress] The IPv4 address of the next hop. Changing this forces a new resource to be created.
  HciLogicalNetworkSubnetRoute({
    required this.addressPrefix,
    this.name,
    required this.nextHopIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'name': ?name,
      'nextHopIpAddress': nextHopIpAddress,
    };
  }

  factory HciLogicalNetworkSubnetRoute.fromMap(Map<String, dynamic> map) {
    return HciLogicalNetworkSubnetRoute(
      addressPrefix: map['addressPrefix'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nextHopIpAddress: map['nextHopIpAddress'] as String,
    );
  }
}

