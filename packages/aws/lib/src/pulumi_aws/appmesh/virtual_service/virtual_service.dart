import 'package:pulumi/pulumi.dart' as pulumi;
import '../virtual_service_spec/virtual_service_spec.dart';
import 'virtual_service_args.dart';

/// Provides an AWS App Mesh virtual service resource.
///
/// ## Example Usage
///
/// ### Virtual Node Provider
///
///
///
/// ### Virtual Router Provider
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual services using `mesh_name` together with the virtual service's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualService:VirtualService servicea simpleapp/servicea.simpleapp.local
/// ```
class VirtualService extends pulumi.CustomResource {
  /// ARN of the virtual service.
  late final pulumi.Output<String> arn;

  /// Creation date of the virtual service.
  late final pulumi.Output<String> createdDate;

  /// Last update date of the virtual service.
  late final pulumi.Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual service. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;

  /// Name to use for the virtual service. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;

  /// Virtual service specification to apply.
  late final pulumi.Output<VirtualServiceSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  VirtualService(
    String name, {
    VirtualServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualService:VirtualService',
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
    this.spec = registerOutput<VirtualServiceSpec>('spec');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
