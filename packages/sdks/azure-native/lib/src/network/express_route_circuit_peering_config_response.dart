// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the peering configuration.
class ExpressRouteCircuitPeeringConfigResponse {
  /// The communities of bgp peering. Specified for microsoft peering.
  final pulumi.Input<List<String>>? advertisedCommunities;
  /// The reference to AdvertisedPublicPrefixes.
  final pulumi.Input<List<String>>? advertisedPublicPrefixes;
  /// The advertised public prefix state of the Peering resource.
  final pulumi.Input<String> advertisedPublicPrefixesState;
  /// The CustomerASN of the peering.
  final pulumi.Input<int>? customerASN;
  /// The legacy mode of the peering.
  final pulumi.Input<int>? legacyMode;
  /// The RoutingRegistryName of the configuration.
  final pulumi.Input<String>? routingRegistryName;

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
      advertisedCommunities: map['advertisedCommunities'] == null ? null : ((map['advertisedCommunities']! as List).cast<String>()).input(),
      advertisedPublicPrefixes: map['advertisedPublicPrefixes'] == null ? null : ((map['advertisedPublicPrefixes']! as List).cast<String>()).input(),
      advertisedPublicPrefixesState: (map['advertisedPublicPrefixesState'] as String).input(),
      customerASN: map['customerASN'] == null ? null : (map['customerASN']! as int).input(),
      legacyMode: map['legacyMode'] == null ? null : (map['legacyMode']! as int).input(),
      routingRegistryName: map['routingRegistryName'] == null ? null : (map['routingRegistryName']! as String).input(),
    );
  }
}

