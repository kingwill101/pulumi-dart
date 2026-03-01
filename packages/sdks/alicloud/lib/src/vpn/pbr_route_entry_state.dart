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
    pulumi.Output<String>? nextHop,
    pulumi.Output<bool>? publishVpc,
    pulumi.Output<String>? routeDest,
    pulumi.Output<String>? routeSource,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpnGatewayId,
    pulumi.Output<int>? weight,
  }) :
      nextHop = pulumi.Input.asOptionalInput<String>(nextHop),
      publishVpc = pulumi.Input.asOptionalInput<bool>(publishVpc),
      routeDest = pulumi.Input.asOptionalInput<String>(routeDest),
      routeSource = pulumi.Input.asOptionalInput<String>(routeSource),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

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
      nextHop: map['nextHop'] == null ? null : pulumi.Output.create<String>(map['nextHop'] as String),
      publishVpc: map['publishVpc'] == null ? null : pulumi.Output.create<bool>(map['publishVpc'] as bool),
      routeDest: map['routeDest'] == null ? null : pulumi.Output.create<String>(map['routeDest'] as String),
      routeSource: map['routeSource'] == null ? null : pulumi.Output.create<String>(map['routeSource'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

