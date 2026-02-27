import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_server_propagation_timeouts/route_server_propagation_timeouts.dart';
import 'route_server_propagation_args.dart';

/// Provides a resource for managing propagation between VPC (Virtual Private Cloud) route server and a route table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, to  to import VPC (Virtual Private Cloud) Route Server Propagation using the associated resource ID and route table ID separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerPropagation:RouteServerPropagation example rs-12345678,rtb-656c65616e6f72
/// ```
class RouteServerPropagation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The unique identifier for the route server to be associated.
  late final pulumi.Output<String> routeServerId;

  /// The ID of the route table to which route server will propagate routes.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> routeTableId;
  late final pulumi.Output<RouteServerPropagationTimeouts?> timeouts;

  RouteServerPropagation(
    String name, {
    RouteServerPropagationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPropagation:RouteServerPropagation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.timeouts = registerOutput<RouteServerPropagationTimeouts?>('timeouts');
  }
}
