// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegistryImage.
class GetRegistryImageArgs {
  /// The image digest to fetch, if any.
  final Input<String>? digest;

  /// The image name.
  final Input<String> name;

  /// The project ID that this image is attached to.  If not provider, provider project will be used instead.
  final Input<String>? project;

  /// The GCR region to use.  As of this writing, one of <span pulumi-lang-nodejs="`asia`" pulumi-lang-dotnet="`Asia`" pulumi-lang-go="`asia`" pulumi-lang-python="`asia`" pulumi-lang-yaml="`asia`" pulumi-lang-java="`asia`">`asia`</span>, <span pulumi-lang-nodejs="`eu`" pulumi-lang-dotnet="`Eu`" pulumi-lang-go="`eu`" pulumi-lang-python="`eu`" pulumi-lang-yaml="`eu`" pulumi-lang-java="`eu`">`eu`</span>, and <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span>.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  final Input<String>? region;

  /// The tag to fetch, if any.
  final Input<String>? tag;

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
      digest: Input.asOptionalInput<String>(map['digest']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      tag: Input.asOptionalInput<String>(map['tag']),
    );
  }
}
