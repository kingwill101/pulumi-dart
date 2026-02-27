import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_route_propagation_args.dart';

/// Requests automatic route propagation between a VPN gateway and a route table.
///
/// > **Note:** This resource should not be used with a route table that has
/// the `propagating_vgws` argument set. If that argument is set, any route
/// propagation not explicitly listed in its value will be removed.
class VpnGatewayRoutePropagation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The id of the `aws.ec2.RouteTable` to propagate routes into.
  late final pulumi.Output<String> routeTableId;

  /// The id of the `aws.ec2.VpnGateway` to propagate routes from.
  late final pulumi.Output<String> vpnGatewayId;

  VpnGatewayRoutePropagation(
    String name, {
    VpnGatewayRoutePropagationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGatewayRoutePropagation:VpnGatewayRoutePropagation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
