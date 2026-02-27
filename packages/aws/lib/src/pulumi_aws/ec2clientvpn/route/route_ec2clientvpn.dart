import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_ec2clientvpn_args.dart';

/// Provides additional routes for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN routes using the endpoint ID, target subnet ID, and destination CIDR block. All values are separated by a `,`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/route:Route example cvpn-endpoint-1234567890abcdef,subnet-9876543210fedcba,10.1.0.0/24
/// ```
class RouteEc2clientvpn extends pulumi.CustomResource {
  /// The ID of the Client VPN endpoint.
  late final pulumi.Output<String> clientVpnEndpointId;

  /// A brief description of the route.
  late final pulumi.Output<String?> description;

  /// The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  late final pulumi.Output<String> destinationCidrBlock;

  /// Indicates how the Client VPN route was added. Will be `add-route` for routes created by this resource.
  late final pulumi.Output<String> origin;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  late final pulumi.Output<String> targetVpcSubnetId;

  /// The type of the route.
  late final pulumi.Output<String> type;

  RouteEc2clientvpn(
    String name, {
    RouteEc2clientvpnArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    this.description = registerOutput<String?>('description');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.origin = registerOutput<String>('origin');
    this.region = registerOutput<String>('region');
    this.targetVpcSubnetId = registerOutput<String>('targetVpcSubnetId');
    this.type = registerOutput<String>('type');
  }
}
