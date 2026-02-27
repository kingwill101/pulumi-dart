// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegistryRepository.
class GetRegistryRepositoryArgs {
  /// The project ID that this repository is attached to.  If not provided, provider project will be used instead.
  final pulumi.Input<String>? project;

  /// The GCR region to use.  As of this writing, one of `asia`, `eu`, and `us`.  See [the documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling) for additional information.
  final pulumi.Input<String>? region;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
