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
    required this.nextHop,
    this.overlayMode,
    required this.routeDest,
    required this.vpnConnectionId,
    required this.weight,
  });

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
      nextHop: pulumi.Input.fromValue(map['nextHop'] as String),
      overlayMode: (() {
        final guardedValue = map['overlayMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeDest: pulumi.Input.fromValue(map['routeDest'] as String),
      vpnConnectionId: pulumi.Input.fromValue(map['vpnConnectionId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
