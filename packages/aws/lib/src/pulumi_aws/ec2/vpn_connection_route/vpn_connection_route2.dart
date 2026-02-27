import 'package:pulumi/pulumi.dart';
import 'vpn_connection_route_args.dart';

/// Provides a static route between a VPN connection and a customer gateway.
class VpnConnectionRoute2 extends CustomResource {
  /// The CIDR block associated with the local subnet of the customer network.
  late final Output<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPN connection.
  late final Output<String> vpnConnectionId;

  VpnConnectionRoute2(
    String name, {
    VpnConnectionRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnectionRoute:VpnConnectionRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.region = registerOutput<String>('region');
    this.vpnConnectionId = registerOutput<String>('vpnConnectionId');
  }
}
