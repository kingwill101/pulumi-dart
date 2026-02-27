import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_route_args.dart';

/// Provides a static route between a VPN connection and a customer gateway.
class VpnConnectionRouteEc2 extends pulumi.CustomResource {
  /// The CIDR block associated with the local subnet of the customer network.
  late final pulumi.Output<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPN connection.
  late final pulumi.Output<String> vpnConnectionId;

  VpnConnectionRouteEc2(
    String name, {
    VpnConnectionRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnectionRoute:VpnConnectionRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.region = registerOutput<String>('region');
    this.vpnConnectionId = registerOutput<String>('vpnConnectionId');
  }
}
