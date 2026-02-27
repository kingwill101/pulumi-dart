import 'package:pulumi/pulumi.dart';
import '../route_server_endpoint_timeouts/route_server_endpoint_timeouts.dart';
import 'route_server_endpoint_args.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server Endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server Endpoint using the `route_server_endpoint_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerEndpoint:RouteServerEndpoint example rse-12345678
/// ```
class RouteServerEndpoint extends CustomResource {
  /// The ARN of the route server endpoint.
  late final Output<String> arn;

  /// The IP address of the Elastic network interface for the endpoint.
  late final Output<String> eniAddress;

  /// The ID of the Elastic network interface for the endpoint.
  late final Output<String> eniId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique identifier of the route server endpoint.
  late final Output<String> routeServerEndpointId;

  /// The ID of the route server for which to create an endpoint.
  late final Output<String> routeServerId;

  /// The ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  late final Output<String> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<RouteServerEndpointTimeouts?> timeouts;

  /// The ID of the VPC containing the endpoint.
  late final Output<String> vpcId;

  RouteServerEndpoint(
    String name, {
    RouteServerEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerEndpoint:RouteServerEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.eniAddress = registerOutput<String>('eniAddress');
    this.eniId = registerOutput<String>('eniId');
    this.region = registerOutput<String>('region');
    this.routeServerEndpointId =
        registerOutput<String>('routeServerEndpointId');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RouteServerEndpointTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
