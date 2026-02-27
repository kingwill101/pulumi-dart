import 'package:pulumi/pulumi.dart';
import '../route_table_route/route_table_route.dart';
import 'route_table_args.dart';

/// Provides a resource to create a VPC routing table.
///
/// > **NOTE on `gateway_id` and `nat_gateway_id`:** The AWS API is very forgiving with these two
/// attributes and the `aws.ec2.RouteTable` resource can be created with a NAT ID specified as a Gateway ID attribute.
/// This _will_ lead to a permanent diff between your configuration and statefile, as the API returns the correct
/// parameters in the returned route table. If you're experiencing constant diffs in your `aws.ec2.RouteTable` resources,
/// the first thing to check is whether or not you're specifying a NAT ID instead of a Gateway ID, or vice-versa.
///
/// > **NOTE on `propagating_vgws` and the `aws.ec2.VpnGatewayRoutePropagation` resource:**
/// If the `propagating_vgws` argument is present, it's not supported to _also_
/// define route propagations using `aws.ec2.VpnGatewayRoutePropagation`, since
/// this resource will delete any propagating gateways not explicitly listed in
/// `propagating_vgws`. Omit this argument when defining route propagation using
/// the separate resource.
///
/// ## Example Usage
///
/// ### Basic example
///
///
///
/// To subsequently remove all managed routes:
///
///
///
/// ### Adopting an existing local route
///
/// AWS creates certain routes that the AWS provider mostly ignores. You can manage them by importing or adopting them. See Import below for information on importing. This example shows adopting a route and then updating its target.
///
/// First, adopt an existing AWS-created route:
///
///
///
/// Next, update the target of the route:
///
///
///
/// The target could then be updated again back to `local`.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the routing table.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Route Tables using the route table `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/routeTable:RouteTable public_rt rtb-4e616f6d69
/// ```
class RouteTable extends CustomResource {
  /// The ARN of the route table.
  late final Output<String> arn;

  /// The ID of the AWS account that owns the route table.
  late final Output<String> ownerId;

  /// A list of virtual gateways for propagation.
  late final Output<List<String>> propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of route objects. Their keys are documented below.
  /// This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above.
  ///
  /// > **NOTE on Route Tables and Routes:** This provider currently provides both a standalone Route resource (`aws.ec2.Route`) and a Route Table resource with routes defined in-line (`aws.ec2.RouteTable`). At this time you cannot use a `aws.ec2.RouteTable` inline `route` blocks in conjunction with any `aws.ec2.Route` resources. Doing so will cause a conflict of rule settings and will overwrite rules.
  late final Output<List<RouteTableRoute>> routes;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID.
  late final Output<String> vpcId;

  RouteTable(
    String name, {
    RouteTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/routeTable:RouteTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.propagatingVgws = registerOutput<List<String>>('propagatingVgws');
    this.region = registerOutput<String>('region');
    this.routes = registerOutput<List<RouteTableRoute>>('routes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
