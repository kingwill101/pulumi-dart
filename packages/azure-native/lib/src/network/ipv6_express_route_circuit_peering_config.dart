// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_circuit_peering_config.dart';
import 'sub_resource.dart';

/// Contains IPv6 peering config.
class Ipv6ExpressRouteCircuitPeeringConfig {
  /// The Microsoft peering configuration.
  final ExpressRouteCircuitPeeringConfig? microsoftPeeringConfig;
  /// The primary address prefix.
  final String? primaryPeerAddressPrefix;
  /// The reference to the RouteFilter resource.
  final SubResource? routeFilter;
  /// The secondary address prefix.
  final String? secondaryPeerAddressPrefix;
  /// The state of peering.
  final String? state;

  /// Creates a new [Ipv6ExpressRouteCircuitPeeringConfig].
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [state] The state of peering.
  Ipv6ExpressRouteCircuitPeeringConfig({
    this.microsoftPeeringConfig,
    this.primaryPeerAddressPrefix,
    this.routeFilter,
    this.secondaryPeerAddressPrefix,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftPeeringConfig': ?microsoftPeeringConfig == null ? null : microsoftPeeringConfig!.toMap(),
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'routeFilter': ?routeFilter == null ? null : routeFilter!.toMap(),
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'state': ?state,
    };
  }

  factory Ipv6ExpressRouteCircuitPeeringConfig.fromMap(Map<String, dynamic> map) {
    return Ipv6ExpressRouteCircuitPeeringConfig(
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>()),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : map['primaryPeerAddressPrefix'] as String,
      routeFilter: map['routeFilter'] == null ? null : SubResource.fromMap((map['routeFilter'] as Map).cast<String, dynamic>()),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : map['secondaryPeerAddressPrefix'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

