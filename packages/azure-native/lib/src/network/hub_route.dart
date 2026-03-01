// ignore_for_file: unused_element, unnecessary_cast


/// RouteTable route.
class HubRoute {
  /// The type of destinations (eg: CIDR, ResourceId, Service).
  final String destinationType;
  /// List of all destinations.
  final List<String> destinations;
  /// The name of the Route that is unique within a RouteTable. This name can be used to access this route.
  final String name;
  /// NextHop resource ID.
  final String nextHop;
  /// The type of next hop (eg: ResourceId).
  final String nextHopType;

  /// Creates a new [HubRoute].
  /// [destinationType] The type of destinations (eg: CIDR, ResourceId, Service).
  /// [destinations] List of all destinations.
  /// [name] The name of the Route that is unique within a RouteTable. This name can be used to access this route.
  /// [nextHop] NextHop resource ID.
  /// [nextHopType] The type of next hop (eg: ResourceId).
  HubRoute({
    required this.destinationType,
    required this.destinations,
    required this.name,
    required this.nextHop,
    required this.nextHopType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationType': destinationType,
      'destinations': destinations,
      'name': name,
      'nextHop': nextHop,
      'nextHopType': nextHopType,
    };
  }

  factory HubRoute.fromMap(Map<String, dynamic> map) {
    return HubRoute(
      destinationType: map['destinationType'] as String,
      destinations: (map['destinations'] as List).cast<String>(),
      name: map['name'] as String,
      nextHop: map['nextHop'] as String,
      nextHopType: map['nextHopType'] as String,
    );
  }
}

