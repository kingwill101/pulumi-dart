// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualHubRouteTableRoute {
  /// A list of destination addresses for this route.
  final List<String> destinations;
  /// The type of destinations.
  final String destinationsType;
  /// The name of the Virtual Hub Route Table.
  final String name;
  /// The next hop's resource ID.
  final String nextHop;
  /// The type of next hop.
  final String nextHopType;

  /// Creates a new [GetVirtualHubRouteTableRoute].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations.
  /// [name] The name of the Virtual Hub Route Table.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop.
  GetVirtualHubRouteTableRoute({
    required this.destinations,
    required this.destinationsType,
    required this.name,
    required this.nextHop,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'destinationsType': destinationsType,
      'name': name,
      'nextHop': nextHop,
      'nextHopType': nextHopType,
    };
  }

  factory GetVirtualHubRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubRouteTableRoute(
      destinations: (map['destinations'] as List).cast<String>(),
      destinationsType: map['destinationsType'] as String,
      name: map['name'] as String,
      nextHop: map['nextHop'] as String,
      nextHopType: map['nextHopType'] as String,
    );
  }
}

