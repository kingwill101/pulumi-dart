import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_args.dart';

/// Manages an EC2 Local Gateway Route. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.LocalGatewayRoute` using the EC2 Local Gateway Route Table identifier and destination CIDR block separated by underscores (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRoute:LocalGatewayRoute example lgw-rtb-12345678_172.16.0.0/16
/// ```
class LocalGatewayRoute extends pulumi.CustomResource {
  /// IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  late final pulumi.Output<String> destinationCidrBlock;

  /// Identifier of EC2 Local Gateway Route Table.
  late final pulumi.Output<String> localGatewayRouteTableId;

  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  late final pulumi.Output<String> localGatewayVirtualInterfaceGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LocalGatewayRoute(
    String name, {
    LocalGatewayRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRoute:LocalGatewayRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.localGatewayRouteTableId =
        registerOutput<String>('localGatewayRouteTableId');
    this.localGatewayVirtualInterfaceGroupId =
        registerOutput<String>('localGatewayVirtualInterfaceGroupId');
    this.region = registerOutput<String>('region');
  }
}
