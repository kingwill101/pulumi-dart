// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_connection_route_vpn_connection_route_args_doc}
/// The set of arguments for VpnConnectionRoute.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_connection_route_vpn_connection_route_args_doc}
class VpnConnectionRouteArgs {
  /// The CIDR block associated with the local subnet of the customer network.
  final pulumi.Input<String> destinationCidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPN connection.
  final pulumi.Input<String> vpnConnectionId;

  /// Creates a new [VpnConnectionRouteArgs].
  /// [destinationCidrBlock] The CIDR block associated with the local subnet of the customer network.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpnConnectionId] The ID of the VPN connection.
  const VpnConnectionRouteArgs({
    required this.destinationCidrBlock,
    this.region,
    required this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': destinationCidrBlock,
      'region': ?region,
      'vpnConnectionId': vpnConnectionId,
    };
  }

  factory VpnConnectionRouteArgs.fromMap(Map<String, dynamic> map) {
    return VpnConnectionRouteArgs(
      destinationCidrBlock: pulumi.Input.fromValue(map['destinationCidrBlock'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnConnectionId: pulumi.Input.fromValue(map['vpnConnectionId'] as String),
    );
  }
}

