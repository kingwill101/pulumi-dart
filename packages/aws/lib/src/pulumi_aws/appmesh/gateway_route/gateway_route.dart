import 'package:pulumi/pulumi.dart';
import '../gateway_route_spec/gateway_route_spec.dart';
import 'gateway_route_args.dart';

/// Provides an AWS App Mesh gateway route resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh gateway routes using `mesh_name` and `virtual_gateway_name` together with the gateway route's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/gatewayRoute:GatewayRoute example mesh/gw1/example-gateway-route
/// ```
class GatewayRoute extends CustomResource {
  /// ARN of the gateway route.
  late final Output<String> arn;

  /// Creation date of the gateway route.
  late final Output<String> createdDate;

  /// Last update date of the gateway route.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Gateway route specification to apply.
  late final Output<GatewayRouteSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  late final Output<String> virtualGatewayName;

  GatewayRoute(
    String name, {
    GatewayRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/gatewayRoute:GatewayRoute',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.meshName = registerOutput<String>('meshName');
    this.meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.spec = registerOutput<GatewayRouteSpec>('spec');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.virtualGatewayName = registerOutput<String>('virtualGatewayName');
  }
}
