// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEngineVersions.
class GetEngineVersionsArgs {
  /// The location (region or zone) to list versions for.
  /// Must exactly match the location the cluster will be deployed in, or listed
  /// versions may not be available. If `location`, `region`, and `zone` are not
  /// specified, the provider-level zone must be set and is used instead.
  final pulumi.Input<String>? location;

  /// ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final pulumi.Input<String>? project;

  /// If provided, the provider will only return versions
  /// that match the string prefix. For example, `1.11.` will match all `1.11` series
  /// releases. Since this is just a string match, it's recommended that you append a
  /// `.` after minor versions to ensure that prefixes such as `1.1` don't match
  /// versions like `1.12.5-gke.10` accidentally. See [the docs on versioning schema](https://cloud.google.com/kubernetes-engine/versioning-and-upgrades#versioning_scheme)
  /// for full details on how version strings are formatted.
  final pulumi.Input<String>? versionPrefix;

  GetEngineVersionsArgs({
    this.location,
    this.project,
    this.versionPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionPrefixValue = versionPrefix;
    if (versionPrefixValue != null) {
      map['versionPrefix'] = versionPrefixValue;
    }
    return map;
  }

  factory GetEngineVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionsArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      versionPrefix: pulumi.Input.asOptionalInput<String>(map['versionPrefix']),
    );
  }
}
