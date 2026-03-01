// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the peering configuration.
class ExpressRouteCircuitPeeringConfigResponse {
  /// The communities of bgp peering. Specified for microsoft peering.
  final List<String>? advertisedCommunities;
  /// The reference to AdvertisedPublicPrefixes.
  final List<String>? advertisedPublicPrefixes;
  /// The advertised public prefix state of the Peering resource.
  final String advertisedPublicPrefixesState;
  /// The CustomerASN of the peering.
  final int? customerASN;
  /// The legacy mode of the peering.
  final int? legacyMode;
  /// The RoutingRegistryName of the configuration.
  final String? routingRegistryName;

  /// Creates a new [ExpressRouteCircuitPeeringConfigResponse].
  /// [advertisedCommunities] The communities of bgp peering. Specified for microsoft peering.
  /// [advertisedPublicPrefixes] The reference to AdvertisedPublicPrefixes.
  /// [advertisedPublicPrefixesState] The advertised public prefix state of the Peering resource.
  /// [customerASN] The CustomerASN of the peering.
  /// [legacyMode] The legacy mode of the peering.
  /// [routingRegistryName] The RoutingRegistryName of the configuration.
  ExpressRouteCircuitPeeringConfigResponse({
    this.advertisedCommunities,
    this.advertisedPublicPrefixes,
    required this.advertisedPublicPrefixesState,
    this.customerASN,
    this.legacyMode,
    this.routingRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertisedCommunities': ?advertisedCommunities,
      'advertisedPublicPrefixes': ?advertisedPublicPrefixes,
      'advertisedPublicPrefixesState': advertisedPublicPrefixesState,
      'customerASN': ?customerASN,
      'legacyMode': ?legacyMode,
      'routingRegistryName': ?routingRegistryName,
    };
  }

  factory ExpressRouteCircuitPeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringConfigResponse(
      advertisedCommunities: map['advertisedCommunities'] == null ? null : (map['advertisedCommunities'] as List).cast<String>(),
      advertisedPublicPrefixes: map['advertisedPublicPrefixes'] == null ? null : (map['advertisedPublicPrefixes'] as List).cast<String>(),
      advertisedPublicPrefixesState: map['advertisedPublicPrefixesState'] as String,
      customerASN: map['customerASN'] == null ? null : map['customerASN'] as int,
      legacyMode: map['legacyMode'] == null ? null : map['legacyMode'] as int,
      routingRegistryName: map['routingRegistryName'] == null ? null : map['routingRegistryName'] as String,
    );
  }
}

