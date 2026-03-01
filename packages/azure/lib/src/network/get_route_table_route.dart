// ignore_for_file: unused_element, unnecessary_cast


class GetRouteTableRoute {
  /// The destination CIDR to which the route applies.
  final String addressPrefix;
  /// The name of the Route Table.
  final String name;
  /// Contains the IP address packets should be forwarded to.
  final String nextHopInIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final String nextHopType;

  /// Creates a new [GetRouteTableRoute].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [name] The name of the Route Table.
  /// [nextHopInIpAddress] Contains the IP address packets should be forwarded to.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  GetRouteTableRoute({
    required this.addressPrefix,
    required this.name,
    required this.nextHopInIpAddress,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'name': name,
      'nextHopInIpAddress': nextHopInIpAddress,
      'nextHopType': nextHopType,
    };
  }

  factory GetRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoute(
      addressPrefix: map['addressPrefix'] as String,
      name: map['name'] as String,
      nextHopInIpAddress: map['nextHopInIpAddress'] as String,
      nextHopType: map['nextHopType'] as String,
    );
  }
}

