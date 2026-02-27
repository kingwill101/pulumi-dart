import 'package:pulumi/pulumi.dart';
import '../mesh_spec/mesh_spec.dart';
import 'mesh_args.dart';

/// Provides an AWS App Mesh service mesh resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Egress Filter
///
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh service meshes using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/mesh:Mesh simple simpleapp
/// ```
class Mesh extends CustomResource {
  /// ARN of the service mesh.
  late final Output<String> arn;

  /// Creation date of the service mesh.
  late final Output<String> createdDate;

  /// Last update date of the service mesh.
  late final Output<String> lastUpdatedDate;

  /// AWS account ID of the service mesh's owner.
  late final Output<String> meshOwner;

  /// Name to use for the service mesh. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Service mesh specification to apply.
  late final Output<MeshSpec?> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Mesh(
    String name, {
    MeshArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/mesh:Mesh',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.spec = registerOutput<MeshSpec?>('spec');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
