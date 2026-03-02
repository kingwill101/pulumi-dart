// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayVcoRoute resources.
class GatewayVcoRouteState {
  /// The next hop of the destination route.
  final pulumi.Input<String>? nextHop;
  /// The tunneling protocol. Set the value to Ipsec, which specifies the IPsec tunneling protocol.
  final pulumi.Input<String>? overlayMode;
  /// The destination network segment of the destination route.
  final pulumi.Input<String>? routeDest;
  /// The status of the vpn route entry.
  final pulumi.Input<String>? status;
  /// The id of the vpn attachment.
  final pulumi.Input<String>? vpnConnectionId;
  /// The weight value of the destination route. Valid values: `0`, `100`.
  final pulumi.Input<int>? weight;

  /// Creates a new [GatewayVcoRouteState].
  /// [nextHop] The next hop of the destination route.
  /// [overlayMode] The tunneling protocol. Set the value to Ipsec, which specifies the IPsec tunneling protocol.
  /// [routeDest] The destination network segment of the destination route.
  /// [status] The status of the vpn route entry.
  /// [vpnConnectionId] The id of the vpn attachment.
  /// [weight] The weight value of the destination route. Valid values: `0`, `100`.
  GatewayVcoRouteState({
    this.nextHop,
    this.overlayMode,
    this.routeDest,
    this.status,
    this.vpnConnectionId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': ?nextHop,
      'overlayMode': ?overlayMode,
      'routeDest': ?routeDest,
      'status': ?status,
      'vpnConnectionId': ?vpnConnectionId,
      'weight': ?weight,
    };
  }

  factory GatewayVcoRouteState.fromMap(Map<String, dynamic> map) {
    return GatewayVcoRouteState(
      nextHop: map['nextHop'] == null ? null : (map['nextHop'] as String).input(),
      overlayMode: map['overlayMode'] == null ? null : (map['overlayMode'] as String).input(),
      routeDest: map['routeDest'] == null ? null : (map['routeDest'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpnConnectionId: map['vpnConnectionId'] == null ? null : (map['vpnConnectionId'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

