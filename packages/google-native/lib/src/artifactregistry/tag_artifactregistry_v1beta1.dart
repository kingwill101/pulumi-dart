import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_artifactregistry_v1beta1_args.dart';

/// Creates a tag.
class TagArtifactregistryV1beta1 extends pulumi.CustomResource {
  late final pulumi.Output<String> location;

  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> packageId;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> repositoryId;

  /// The tag id to use for this repository.
  late final pulumi.Output<String?> tagId;

  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  late final pulumi.Output<String> version;

  /// Creates a new [TagArtifactregistryV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagArtifactregistryV1beta1]. {@macro pulumi_artifactregistry_v1beta1_tag_artifactregistry_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagArtifactregistryV1beta1(
    String name, {
    TagArtifactregistryV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:artifactregistry/v1beta1:Tag',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.packageId = registerOutput<String>('packageId');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.tagId = registerOutput<String?>('tagId');
    this.version = registerOutput<String>('version');
  }
}
