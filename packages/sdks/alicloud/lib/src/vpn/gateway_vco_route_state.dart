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
      nextHop: (() {
        final guardedValue = map['nextHop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overlayMode: (() {
        final guardedValue = map['overlayMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeDest: (() {
        final guardedValue = map['routeDest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnConnectionId: (() {
        final guardedValue = map['vpnConnectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
