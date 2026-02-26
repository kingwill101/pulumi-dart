// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpnGatewayRoutePropagation.
class VpnGatewayRoutePropagationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The id of the <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span> to propagate routes into.
  final Input<String> routeTableId;

  /// The id of the <span pulumi-lang-nodejs="`aws.ec2.VpnGateway`" pulumi-lang-dotnet="`aws.ec2.VpnGateway`" pulumi-lang-go="`ec2.VpnGateway`" pulumi-lang-python="`ec2.VpnGateway`" pulumi-lang-yaml="`aws.ec2.VpnGateway`" pulumi-lang-java="`aws.ec2.VpnGateway`">`aws.ec2.VpnGateway`</span> to propagate routes from.
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
