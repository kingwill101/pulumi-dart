import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_ec2transitgateway_args.dart';

/// Manages an EC2 Transit Gateway Route Table.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.RouteTable` using the EC2 Transit Gateway Route Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/routeTable:RouteTable example tgw-rtb-12345678
/// ```
class RouteTableEc2transitgateway extends pulumi.CustomResource {
  /// EC2 Transit Gateway Route Table Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// Boolean whether this is the default association route table for the EC2 Transit Gateway.
  late final pulumi.Output<bool> defaultAssociationRouteTable;

  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway.
  late final pulumi.Output<bool> defaultPropagationRouteTable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Route Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Identifier of EC2 Transit Gateway.
  late final pulumi.Output<String> transitGatewayId;

  RouteTableEc2transitgateway(
    String name, {
    RouteTableEc2transitgatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/routeTable:RouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultAssociationRouteTable =
        registerOutput<bool>('defaultAssociationRouteTable');
    this.defaultPropagationRouteTable =
        registerOutput<bool>('defaultPropagationRouteTable');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
