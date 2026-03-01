// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_engine_versions_get_engine_versions_args_doc}
/// Arguments for getEngineVersions.
/// {@endtemplate}
/// {@macro pulumi_container_get_engine_versions_get_engine_versions_args_doc}
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

  /// Creates a new [GetEngineVersionsArgs].
  /// [location] The location (region or zone) to list versions for.
  /// [project] ID of the project to list available cluster versions for. Should match the project the cluster will be deployed to.
  /// [versionPrefix] If provided, the provider will only return versions
  GetEngineVersionsArgs({
    String? location,
    String? project,
    String? versionPrefix,
  }) : location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       versionPrefix = pulumi.Input.asOptionalInput<String>(versionPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
      'versionPrefix': ?versionPrefix,
    };
  }

  factory GetEngineVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionsArgs(
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionPrefix: map['versionPrefix'] == null
          ? null
          : map['versionPrefix'] as String,
    );
  }
}
