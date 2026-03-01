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
    pulumi.Output<String>? nextHop,
    pulumi.Output<bool>? publishVpc,
    pulumi.Output<String>? routeDest,
    pulumi.Output<String>? routeEntryType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpnGatewayId,
    pulumi.Output<int>? weight,
  }) :
      nextHop = pulumi.Input.asOptionalInput<String>(nextHop),
      publishVpc = pulumi.Input.asOptionalInput<bool>(publishVpc),
      routeDest = pulumi.Input.asOptionalInput<String>(routeDest),
      routeEntryType = pulumi.Input.asOptionalInput<String>(routeEntryType),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

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
      nextHop: map['nextHop'] == null ? null : pulumi.Output.create<String>(map['nextHop'] as String),
      publishVpc: map['publishVpc'] == null ? null : pulumi.Output.create<bool>(map['publishVpc'] as bool),
      routeDest: map['routeDest'] == null ? null : pulumi.Output.create<String>(map['routeDest'] as String),
      routeEntryType: map['routeEntryType'] == null ? null : pulumi.Output.create<String>(map['routeEntryType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

