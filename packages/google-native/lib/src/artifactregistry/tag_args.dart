// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1_tag_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1_tag_args_doc}
class TagArgs {
  final pulumi.Input<String>? location;

  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> packageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// The tag id to use for this repository.
  final pulumi.Input<String>? tagId;

  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  final pulumi.Input<String>? version;

  /// Creates a new [TagArgs].
  /// [location] Optional.
  /// [name] The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  /// [packageId] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tagId] The tag id to use for this repository.
  /// [version] The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  TagArgs({
    String? location,
    String? name,
    required String packageId,
    String? project,
    required String repositoryId,
    String? tagId,
    String? version,
  })  : location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        packageId = pulumi.Input.asInput<String>(packageId),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositoryId = pulumi.Input.asInput<String>(repositoryId),
        tagId = pulumi.Input.asOptionalInput<String>(tagId),
        version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['packageId'] = packageId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    final tagIdValue = tagId;
    if (tagIdValue != null) {
      map['tagId'] = tagIdValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory TagArgs.fromMap(Map<String, dynamic> map) {
    return TagArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      packageId: map['packageId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      tagId: map['tagId'] == null ? null : map['tagId'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
