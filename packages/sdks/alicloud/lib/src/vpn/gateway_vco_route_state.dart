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
    pulumi.Output<String>? nextHop,
    pulumi.Output<String>? overlayMode,
    pulumi.Output<String>? routeDest,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpnConnectionId,
    pulumi.Output<int>? weight,
  }) :
      nextHop = pulumi.Input.asOptionalInput<String>(nextHop),
      overlayMode = pulumi.Input.asOptionalInput<String>(overlayMode),
      routeDest = pulumi.Input.asOptionalInput<String>(routeDest),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpnConnectionId = pulumi.Input.asOptionalInput<String>(vpnConnectionId),
      weight = pulumi.Input.asOptionalInput<int>(weight);

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
      nextHop: map['nextHop'] == null ? null : pulumi.Output.create<String>(map['nextHop'] as String),
      overlayMode: map['overlayMode'] == null ? null : pulumi.Output.create<String>(map['overlayMode'] as String),
      routeDest: map['routeDest'] == null ? null : pulumi.Output.create<String>(map['routeDest'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpnConnectionId: map['vpnConnectionId'] == null ? null : pulumi.Output.create<String>(map['vpnConnectionId'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<int>(map['weight'] as int),
    );
  }
}

