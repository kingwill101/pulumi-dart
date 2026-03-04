// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the peering configuration.
class ExpressRouteCircuitPeeringConfig {
  /// The communities of bgp peering. Specified for microsoft peering.
  final pulumi.Input<List<String>>? advertisedCommunities;

  /// The reference to AdvertisedPublicPrefixes.
  final pulumi.Input<List<String>>? advertisedPublicPrefixes;

  /// The CustomerASN of the peering.
  final pulumi.Input<int>? customerASN;

  /// The legacy mode of the peering.
  final pulumi.Input<int>? legacyMode;

  /// The RoutingRegistryName of the configuration.
  final pulumi.Input<String>? routingRegistryName;

  /// Creates a new [ExpressRouteCircuitPeeringConfig].
  /// [advertisedCommunities] The communities of bgp peering. Specified for microsoft peering.
  /// [advertisedPublicPrefixes] The reference to AdvertisedPublicPrefixes.
  /// [customerASN] The CustomerASN of the peering.
  /// [legacyMode] The legacy mode of the peering.
  /// [routingRegistryName] The RoutingRegistryName of the configuration.
  ExpressRouteCircuitPeeringConfig({
    this.advertisedCommunities,
    this.advertisedPublicPrefixes,
    this.customerASN,
    this.legacyMode,
    this.routingRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertisedCommunities': ?advertisedCommunities,
      'advertisedPublicPrefixes': ?advertisedPublicPrefixes,
      'customerASN': ?customerASN,
      'legacyMode': ?legacyMode,
      'routingRegistryName': ?routingRegistryName,
    };
  }

  factory ExpressRouteCircuitPeeringConfig.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringConfig(
      advertisedCommunities: (() {
        final guardedValue = map['advertisedCommunities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      advertisedPublicPrefixes: (() {
        final guardedValue = map['advertisedPublicPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      customerASN: (() {
        final guardedValue = map['customerASN'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      legacyMode: (() {
        final guardedValue = map['legacyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      routingRegistryName: (() {
        final guardedValue = map['routingRegistryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
