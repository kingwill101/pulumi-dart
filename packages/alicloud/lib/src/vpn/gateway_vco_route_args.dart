// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_gateway_vco_route_gateway_vco_route_args_doc}
/// The set of arguments for GatewayVcoRoute.
/// {@endtemplate}
/// {@macro pulumi_vpn_gateway_vco_route_gateway_vco_route_args_doc}
class GatewayVcoRouteArgs {
  /// The next hop of the destination route.
  final pulumi.Input<String> nextHop;
  /// The tunneling protocol. Set the value to Ipsec, which specifies the IPsec tunneling protocol.
  final pulumi.Input<String>? overlayMode;
  /// The destination network segment of the destination route.
  final pulumi.Input<String> routeDest;
  /// The id of the vpn attachment.
  final pulumi.Input<String> vpnConnectionId;
  /// The weight value of the destination route. Valid values: `0`, `100`.
  final pulumi.Input<int> weight;

  /// Creates a new [GatewayVcoRouteArgs].
  /// [nextHop] The next hop of the destination route.
  /// [overlayMode] The tunneling protocol. Set the value to Ipsec, which specifies the IPsec tunneling protocol.
  /// [routeDest] The destination network segment of the destination route.
  /// [vpnConnectionId] The id of the vpn attachment.
  /// [weight] The weight value of the destination route. Valid values: `0`, `100`.
  GatewayVcoRouteArgs({
    required String nextHop,
    String? overlayMode,
    required String routeDest,
    required String vpnConnectionId,
    required int weight,
  }) :
      nextHop = pulumi.Input.asInput<String>(nextHop),
      overlayMode = pulumi.Input.asOptionalInput<String>(overlayMode),
      routeDest = pulumi.Input.asInput<String>(routeDest),
      vpnConnectionId = pulumi.Input.asInput<String>(vpnConnectionId),
      weight = pulumi.Input.asInput<int>(weight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': nextHop,
      'overlayMode': ?overlayMode,
      'routeDest': routeDest,
      'vpnConnectionId': vpnConnectionId,
      'weight': weight,
    };
  }

  factory GatewayVcoRouteArgs.fromMap(Map<String, dynamic> map) {
    return GatewayVcoRouteArgs(
      nextHop: map['nextHop'] as String,
      overlayMode: map['overlayMode'] == null ? null : map['overlayMode'] as String,
      routeDest: map['routeDest'] as String,
      vpnConnectionId: map['vpnConnectionId'] as String,
      weight: map['weight'] as int,
    );
  }
}

