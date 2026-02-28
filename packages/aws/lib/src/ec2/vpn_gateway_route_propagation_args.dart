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
  VpnGatewayRoutePropagationArgs({
    String? region,
    required String routeTableId,
    required String vpnGatewayId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        routeTableId = pulumi.Input.asInput<String>(routeTableId),
        vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeTableId'] = routeTableId;
    map['vpnGatewayId'] = vpnGatewayId;
    return map;
  }

  factory VpnGatewayRoutePropagationArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayRoutePropagationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}
