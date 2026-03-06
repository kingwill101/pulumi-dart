// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpn_gateway_route_propagation_vpn_gateway_route_propagation_args_doc}
/// The set of arguments for VpnGatewayRoutePropagation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpn_gateway_route_propagation_vpn_gateway_route_propagation_args_doc}
class VpnGatewayRoutePropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The id of the `aws.ec2.RouteTable` to propagate routes into.
  final pulumi.Input<String> routeTableId;
  /// The id of the `aws.ec2.VpnGateway` to propagate routes from.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [VpnGatewayRoutePropagationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The id of the `aws.ec2.RouteTable` to propagate routes into.
  /// [vpnGatewayId] The id of the `aws.ec2.VpnGateway` to propagate routes from.
  const VpnGatewayRoutePropagationArgs({
    this.region,
    required this.routeTableId,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeTableId': routeTableId,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory VpnGatewayRoutePropagationArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayRoutePropagationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      vpnGatewayId: pulumi.Input.fromValue(map['vpnGatewayId'] as String),
    );
  }
}

