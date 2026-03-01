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
    required String nextHop,
    required bool publishVpc,
    required String routeDest,
    required String vpnGatewayId,
    required int weight,
  }) :
      nextHop = pulumi.Input.asInput<String>(nextHop),
      publishVpc = pulumi.Input.asInput<bool>(publishVpc),
      routeDest = pulumi.Input.asInput<String>(routeDest),
      vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId),
      weight = pulumi.Input.asInput<int>(weight);

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
      nextHop: map['nextHop'] as String,
      publishVpc: map['publishVpc'] as bool,
      routeDest: map['routeDest'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
      weight: map['weight'] as int,
    );
  }
}

