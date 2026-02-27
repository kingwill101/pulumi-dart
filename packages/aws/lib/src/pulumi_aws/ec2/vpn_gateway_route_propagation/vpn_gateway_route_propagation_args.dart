// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpnGatewayRoutePropagation.
class VpnGatewayRoutePropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The id of the `aws.ec2.RouteTable` to propagate routes into.
  final Input<String> routeTableId;

  /// The id of the `aws.ec2.VpnGateway` to propagate routes from.
  final Input<String> vpnGatewayId;

  VpnGatewayRoutePropagationArgs({
    this.region,
    required this.routeTableId,
    required this.vpnGatewayId,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      routeTableId: Input.asInput<String>(map['routeTableId']),
      vpnGatewayId: Input.asInput<String>(map['vpnGatewayId']),
    );
  }
}
