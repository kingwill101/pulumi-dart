import 'package:pulumi/pulumi.dart';
import 'tag_args2.dart';

/// Creates a tag.
class Tag4 extends CustomResource {
  late final Output<String> location;

  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  late final Output<String> name;
  late final Output<String> packageId;
  late final Output<String> project;
  late final Output<String> repositoryId;

  /// The tag id to use for this repository.
  late final Output<String?> tagId;

  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  late final Output<String> version;

  Tag4(
    String name, {
    TagArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:artifactregistry/v1beta1:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
