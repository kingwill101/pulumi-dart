import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_ec2transitgateway_args.dart';

/// Manages an EC2 Transit Gateway Route.
///
/// ## Example Usage
///
/// ### Standard usage
///
///
///
/// ### Blackhole route
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.Route` using the EC2 Transit Gateway Route Table, an underscore, and the destination. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/route:Route example tgw-rtb-12345678_0.0.0.0/0
/// ```
class RouteEc2transitgateway extends pulumi.CustomResource {
  /// Indicates whether to drop traffic that matches this route (default to `false`).
  late final pulumi.Output<bool?> blackhole;

  /// IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  late final pulumi.Output<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of EC2 Transit Gateway Attachment (required if `blackhole` is set to false).
  late final pulumi.Output<String?> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  late final pulumi.Output<String> transitGatewayRouteTableId;

  RouteEc2transitgateway(
    String name, {
    RouteEc2transitgatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blackhole = registerOutput<bool?>('blackhole');
    this.destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    this.region = registerOutput<String>('region');
    this.transitGatewayAttachmentId =
        registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayRouteTableId =
        registerOutput<String>('transitGatewayRouteTableId');
  }
}
