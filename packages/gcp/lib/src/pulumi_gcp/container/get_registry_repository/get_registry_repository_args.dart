// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegistryRepository.
class GetRegistryRepositoryArgs {
  /// The project ID that this repository is attached to.  If not provided, provider project will be used instead.
  final Input<String>? project;

  /// The GCR region to use.  As of this writing, one of <span pulumi-lang-nodejs="`asia`" pulumi-lang-dotnet="`Asia`" pulumi-lang-go="`asia`" pulumi-lang-python="`asia`" pulumi-lang-yaml="`asia`" pulumi-lang-java="`asia`">`asia`</span>, <span pulumi-lang-nodejs="`eu`" pulumi-lang-dotnet="`Eu`" pulumi-lang-go="`eu`" pulumi-lang-python="`eu`" pulumi-lang-yaml="`eu`" pulumi-lang-java="`eu`">`eu`</span>, and <span pulumi-lang-nodejs="`us`" pulumi-lang-dotnet="`Us`" pulumi-lang-go="`us`" pulumi-lang-python="`us`" pulumi-lang-yaml="`us`" pulumi-lang-java="`us`">`us`</span>.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  final Input<String>? region;

  GetRegistryRepositoryArgs({
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetRegistryRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryRepositoryArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
