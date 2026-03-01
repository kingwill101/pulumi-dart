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
    required pulumi.Output<String> nextHop,
    required pulumi.Output<bool> publishVpc,
    required pulumi.Output<String> routeDest,
    required pulumi.Output<String> routeSource,
    required pulumi.Output<String> vpnGatewayId,
    required pulumi.Output<int> weight,
  }) :
      nextHop = pulumi.Input.asInput<String>(nextHop),
      publishVpc = pulumi.Input.asInput<bool>(publishVpc),
      routeDest = pulumi.Input.asInput<String>(routeDest),
      routeSource = pulumi.Input.asInput<String>(routeSource),
      vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId),
      weight = pulumi.Input.asInput<int>(weight);

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
      nextHop: pulumi.Output.create<String>(map['nextHop'] as String),
      publishVpc: pulumi.Output.create<bool>(map['publishVpc'] as bool),
      routeDest: pulumi.Output.create<String>(map['routeDest'] as String),
      routeSource: pulumi.Output.create<String>(map['routeSource'] as String),
      vpnGatewayId: pulumi.Output.create<String>(map['vpnGatewayId'] as String),
      weight: pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

