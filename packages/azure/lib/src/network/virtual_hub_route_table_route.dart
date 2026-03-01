// ignore_for_file: unused_element, unnecessary_cast


class VirtualHubRouteTableRoute {
  /// A list of destination addresses for this route.
  final List<String> destinations;
  /// The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  final String destinationsType;
  /// The name which should be used for this route.
  final String name;
  /// The next hop's resource ID.
  final String nextHop;
  /// The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  ///
  /// > **Note:** The Routes can alternatively be created using the virtual_hub_route_table_route resource. Using both inline and external routes is not supported and may result in unexpected configuration.
  final String? nextHopType;

  /// Creates a new [VirtualHubRouteTableRoute].
  /// [destinations] A list of destination addresses for this route.
  /// [destinationsType] The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  /// [name] The name which should be used for this route.
  /// [nextHop] The next hop's resource ID.
  /// [nextHopType] The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  VirtualHubRouteTableRoute({
    required this.destinations,
    required this.destinationsType,
    required this.name,
    required this.nextHop,
    this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'destinationsType': destinationsType,
      'name': name,
      'nextHop': nextHop,
      'nextHopType': ?nextHopType,
    };
  }

  factory VirtualHubRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableRoute(
      destinations: (map['destinations'] as List).cast<String>(),
      destinationsType: map['destinationsType'] as String,
      name: map['name'] as String,
      nextHop: map['nextHop'] as String,
      nextHopType: map['nextHopType'] == null ? null : map['nextHopType'] as String,
    );
  }
}

