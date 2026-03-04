// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteEntry resources.
class RouteEntryState {
  /// The next hop of the destination route.
  final pulumi.Input<String>? nextHop;

  /// Whether to issue the destination route to the VPC.
  final pulumi.Input<bool>? publishVpc;

  /// The destination network segment of the destination route.
  final pulumi.Input<String>? routeDest;

  /// (Available since v1.161.0) The type of the vpn route entry.
  final pulumi.Input<String>? routeEntryType;

  /// (Available since v1.161.0) The status of the vpn route entry.
  final pulumi.Input<String>? status;

  /// The id of the vpn gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// The value should be 0 or 100.
  final pulumi.Input<int>? weight;

  /// Creates a new [RouteEntryState].
  /// [nextHop] The next hop of the destination route.
  /// [publishVpc] Whether to issue the destination route to the VPC.
  /// [routeDest] The destination network segment of the destination route.
  /// [routeEntryType] (Available since v1.161.0) The type of the vpn route entry.
  /// [status] (Available since v1.161.0) The status of the vpn route entry.
  /// [vpnGatewayId] The id of the vpn gateway.
  /// [weight] The value should be 0 or 100.
  RouteEntryState({
    this.nextHop,
    this.publishVpc,
    this.routeDest,
    this.routeEntryType,
    this.status,
    this.vpnGatewayId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': ?nextHop,
      'publishVpc': ?publishVpc,
      'routeDest': ?routeDest,
      'routeEntryType': ?routeEntryType,
      'status': ?status,
      'vpnGatewayId': ?vpnGatewayId,
      'weight': ?weight,
    };
  }

  factory RouteEntryState.fromMap(Map<String, dynamic> map) {
    return RouteEntryState(
      nextHop: (() {
        final guardedValue = map['nextHop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publishVpc: (() {
        final guardedValue = map['publishVpc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      routeDest: (() {
        final guardedValue = map['routeDest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeEntryType: (() {
        final guardedValue = map['routeEntryType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpnGatewayId: (() {
        final guardedValue = map['vpnGatewayId'];
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
