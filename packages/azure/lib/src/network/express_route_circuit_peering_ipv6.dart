// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_circuit_peering_ipv6_microsoft_peering.dart';

class ExpressRouteCircuitPeeringIpv6 {
  /// A boolean value indicating whether the IPv6 peering is enabled. Defaults to `true`.
  final bool? enabled;
  /// A `microsoft_peering` block as defined below.
  final ExpressRouteCircuitPeeringIpv6MicrosoftPeering? microsoftPeering;
  /// A subnet for the primary link.
  final String primaryPeerAddressPrefix;
  /// The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  ///
  /// > **Note:** `ipv6` can be specified when `peering_type` is `MicrosoftPeering` or `AzurePrivatePeering`
  final String? routeFilterId;
  /// A subnet for the secondary link.
  final String secondaryPeerAddressPrefix;

  /// Creates a new [ExpressRouteCircuitPeeringIpv6].
  /// [enabled] A boolean value indicating whether the IPv6 peering is enabled. Defaults to `true`.
  /// [microsoftPeering] A `microsoft_peering` block as defined below.
  /// [primaryPeerAddressPrefix] A subnet for the primary link.
  /// [routeFilterId] The ID of the Route Filter. Only available when `peering_type` is set to `MicrosoftPeering`.
  /// [secondaryPeerAddressPrefix] A subnet for the secondary link.
  ExpressRouteCircuitPeeringIpv6({
    this.enabled,
    this.microsoftPeering,
    required this.primaryPeerAddressPrefix,
    this.routeFilterId,
    required this.secondaryPeerAddressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'microsoftPeering': ?microsoftPeering == null ? null : microsoftPeering!.toMap(),
      'primaryPeerAddressPrefix': primaryPeerAddressPrefix,
      'routeFilterId': ?routeFilterId,
      'secondaryPeerAddressPrefix': secondaryPeerAddressPrefix,
    };
  }

  factory ExpressRouteCircuitPeeringIpv6.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringIpv6(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      microsoftPeering: map['microsoftPeering'] == null ? null : ExpressRouteCircuitPeeringIpv6MicrosoftPeering.fromMap((map['microsoftPeering'] as Map).cast<String, dynamic>()),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] as String,
      routeFilterId: map['routeFilterId'] == null ? null : map['routeFilterId'] as String,
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] as String,
    );
  }
}

