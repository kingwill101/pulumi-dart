// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_pbr_route_entry_pbr_route_entry_args_doc}
/// The set of arguments for PbrRouteEntry.
/// {@endtemplate}
/// {@macro pulumi_vpn_pbr_route_entry_pbr_route_entry_args_doc}
class PbrRouteEntryArgs {
  /// The next hop of the policy-based route.
  final pulumi.Input<String> nextHop;
  /// Whether to issue the destination route to the VPC.
  final pulumi.Input<bool> publishVpc;
  /// The destination CIDR block of the policy-based route.
  final pulumi.Input<String> routeDest;
  /// The source CIDR block of the policy-based route.
  final pulumi.Input<String> routeSource;
  /// The ID of the vpn gateway.
  final pulumi.Input<String> vpnGatewayId;
  /// The weight of the policy-based route. Valid values: 0 and 100.
  final pulumi.Input<int> weight;

  /// Creates a new [PbrRouteEntryArgs].
  /// [nextHop] The next hop of the policy-based route.
  /// [publishVpc] Whether to issue the destination route to the VPC.
  /// [routeDest] The destination CIDR block of the policy-based route.
  /// [routeSource] The source CIDR block of the policy-based route.
  /// [vpnGatewayId] The ID of the vpn gateway.
  /// [weight] The weight of the policy-based route. Valid values: 0 and 100.
  PbrRouteEntryArgs({
    required this.nextHop,
    required this.publishVpc,
    required this.routeDest,
    required this.routeSource,
    required this.vpnGatewayId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': nextHop,
      'publishVpc': publishVpc,
      'routeDest': routeDest,
      'routeSource': routeSource,
      'vpnGatewayId': vpnGatewayId,
      'weight': weight,
    };
  }

  factory PbrRouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return PbrRouteEntryArgs(
      nextHop: (map['nextHop'] as String).input(),
      publishVpc: (map['publishVpc'] as bool).input(),
      routeDest: (map['routeDest'] as String).input(),
      routeSource: (map['routeSource'] as String).input(),
      vpnGatewayId: (map['vpnGatewayId'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

