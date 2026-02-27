// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tag.
class TagArtifactregistryV1beta2Args {
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

  TagArtifactregistryV1beta2Args({
    this.location,
    this.name,
    required this.packageId,
    this.project,
    required this.repositoryId,
    this.tagId,
    this.version,
  });

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

  factory TagArtifactregistryV1beta2Args.fromMap(Map<String, dynamic> map) {
    return TagArtifactregistryV1beta2Args(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      packageId: pulumi.Input.asInput<String>(map['packageId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      tagId: pulumi.Input.asOptionalInput<String>(map['tagId']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
