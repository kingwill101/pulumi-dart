import 'package:pulumi/pulumi.dart' as pulumi;
import '../virtual_router_spec/virtual_router_spec.dart';
import 'virtual_router_args.dart';

/// Provides an AWS App Mesh virtual router resource.
///
/// ## Breaking Changes
///
/// Because of backward incompatible API changes (read [here](https://github.com/awslabs/aws-app-mesh-examples/issues/92) and [here](https://github.com/awslabs/aws-app-mesh-examples/issues/94)), `aws.appmesh.VirtualRouter` resource definitions created with provider versions earlier than v2.3.0 will need to be modified:
///
/// * Remove service `service_names` from the `spec` argument. AWS has created a `aws.appmesh.VirtualService` resource for each service name. Import these resource using `pulumi import`.
///
/// * Add a `listener` configuration block to the `spec` argument.
///
/// The state associated with existing resources will automatically be migrated.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual routers using `mesh_name` together with the virtual router's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualRouter:VirtualRouter serviceb simpleapp/serviceB
/// ```
class VirtualRouter extends pulumi.CustomResource {
  /// ARN of the virtual router.
  late final pulumi.Output<String> arn;

  /// Creation date of the virtual router.
  late final pulumi.Output<String> createdDate;

  /// Last update date of the virtual router.
  late final pulumi.Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;

  /// Name to use for the virtual router. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;

  /// Virtual router specification to apply.
  late final pulumi.Output<VirtualRouterSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  VirtualRouter(
    String name, {
    VirtualRouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualRouter:VirtualRouter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.meshName = registerOutput<String>('meshName');
    this.meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.spec = registerOutput<VirtualRouterSpec>('spec');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
