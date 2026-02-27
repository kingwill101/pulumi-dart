import 'package:pulumi/pulumi.dart' as pulumi;
import '../route_server_vpc_association_timeouts/route_server_vpc_association_timeouts.dart';
import 'route_server_vpc_association_args.dart';

/// Provides a resource for managing association between VPC (Virtual Private Cloud) route server and a VPC.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, to  to import VPC (Virtual Private Cloud) Route Server Association using the associated resource ID and VPC Id separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerVpcAssociation:RouteServerVpcAssociation example rs-12345678,vpc-0f001273ec18911b1
/// ```
class RouteServerVpcAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The unique identifier for the route server to be associated.
  late final pulumi.Output<String> routeServerId;
  late final pulumi.Output<RouteServerVpcAssociationTimeouts?> timeouts;

  /// The ID of the VPC to associate with the route server.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  RouteServerVpcAssociation(
    String name, {
    RouteServerVpcAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerVpcAssociation:RouteServerVpcAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.timeouts =
        registerOutput<RouteServerVpcAssociationTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
