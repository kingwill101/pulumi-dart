// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PbrRouteEntry resources.
class PbrRouteEntryState {
  /// The next hop of the policy-based route.
  final pulumi.Input<String>? nextHop;
  /// Whether to issue the destination route to the VPC.
  final pulumi.Input<bool>? publishVpc;
  /// The destination CIDR block of the policy-based route.
  final pulumi.Input<String>? routeDest;
  /// The source CIDR block of the policy-based route.
  final pulumi.Input<String>? routeSource;
  /// The status of the vpn pbr route entry.
  final pulumi.Input<String>? status;
  /// The ID of the vpn gateway.
  final pulumi.Input<String>? vpnGatewayId;
  /// The weight of the policy-based route. Valid values: 0 and 100.
  final pulumi.Input<int>? weight;

  /// Creates a new [PbrRouteEntryState].
  /// [nextHop] The next hop of the policy-based route.
  /// [publishVpc] Whether to issue the destination route to the VPC.
  /// [routeDest] The destination CIDR block of the policy-based route.
  /// [routeSource] The source CIDR block of the policy-based route.
  /// [status] The status of the vpn pbr route entry.
  /// [vpnGatewayId] The ID of the vpn gateway.
  /// [weight] The weight of the policy-based route. Valid values: 0 and 100.
  PbrRouteEntryState({
    this.nextHop,
    this.publishVpc,
    this.routeDest,
    this.routeSource,
    this.status,
    this.vpnGatewayId,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextHop': ?nextHop,
      'publishVpc': ?publishVpc,
      'routeDest': ?routeDest,
      'routeSource': ?routeSource,
      'status': ?status,
      'vpnGatewayId': ?vpnGatewayId,
      'weight': ?weight,
    };
  }

  factory PbrRouteEntryState.fromMap(Map<String, dynamic> map) {
    return PbrRouteEntryState(
      nextHop: map['nextHop'] == null ? null : (map['nextHop'] as String).input(),
      publishVpc: map['publishVpc'] == null ? null : (map['publishVpc'] as bool).input(),
      routeDest: map['routeDest'] == null ? null : (map['routeDest'] as String).input(),
      routeSource: map['routeSource'] == null ? null : (map['routeSource'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : (map['vpnGatewayId'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

