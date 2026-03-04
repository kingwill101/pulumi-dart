// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_route_entry_route_entry_args_doc}
/// The set of arguments for RouteEntry.
/// {@endtemplate}
/// {@macro pulumi_vpn_route_entry_route_entry_args_doc}
class RouteEntryArgs {
  /// The next hop of the destination route.
  final pulumi.Input<String> nextHop;

  /// Whether to issue the destination route to the VPC.
  final pulumi.Input<bool> publishVpc;

  /// The destination network segment of the destination route.
  final pulumi.Input<String> routeDest;

  /// The id of the vpn gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// The value should be 0 or 100.
  final pulumi.Input<int> weight;

  /// Creates a new [RouteEntryArgs].
  /// [nextHop] The next hop of the destination route.
  /// [publishVpc] Whether to issue the destination route to the VPC.
  /// [routeDest] The destination network segment of the destination route.
  /// [vpnGatewayId] The id of the vpn gateway.
  /// [weight] The value should be 0 or 100.
  RouteEntryArgs({
    required this.nextHop,
    required this.publishVpc,
    required this.routeDest,
    required this.vpnGatewayId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': nextHop,
      'publishVpc': publishVpc,
      'routeDest': routeDest,
      'vpnGatewayId': vpnGatewayId,
      'weight': weight,
    };
  }

  factory RouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return RouteEntryArgs(
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      publishVpc: pulumi.Input.fromValue(map['publishVpc'] as bool),
      routeDest: pulumi.Input.fromValue(map['routeDest'] as String),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
