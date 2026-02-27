// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegistryImage.
class GetRegistryImageArgs {
  /// The image digest to fetch, if any.
  final pulumi.Input<String>? digest;

  /// The image name.
  final pulumi.Input<String> name;

  /// The project ID that this image is attached to.  If not provider, provider project will be used instead.
  final pulumi.Input<String>? project;

  /// The GCR region to use.  As of this writing, one of `asia`, `eu`, and `us`.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  final pulumi.Input<String>? region;

  /// The tag to fetch, if any.
  final pulumi.Input<String>? tag;

  GetRegistryImageArgs({
    this.digest,
    required this.name,
    this.project,
    this.region,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final digestValue = digest;
    if (digestValue != null) {
      map['digest'] = digestValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory GetRegistryImageArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageArgs(
      digest: pulumi.Input.asOptionalInput<String>(map['digest']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tag: pulumi.Input.asOptionalInput<String>(map['tag']),
    );
  }
}
