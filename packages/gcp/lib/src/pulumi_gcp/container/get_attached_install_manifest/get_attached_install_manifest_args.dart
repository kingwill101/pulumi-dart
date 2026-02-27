// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAttachedInstallManifest.
class GetAttachedInstallManifestArgs {
  /// The name that will be used when creating the attached cluster resource.
  final Input<String> clusterId;

  /// The location to list versions for.
  final Input<String> location;

  /// The platform version for the cluster. A list of valid values can be retrieved using the `gcp.container.getAttachedVersions` data source.
  final Input<String> platformVersion;

  /// ID of the project to list available platform versions for. Should match the project the cluster will be deployed to.
  /// Defaults to the project that the provider is authenticated with.
  final Input<String> project;

  GetAttachedInstallManifestArgs({
    required this.clusterId,
    required this.location,
    required this.platformVersion,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    map['platformVersion'] = platformVersion;
    map['project'] = project;
    return map;
  }

  factory GetAttachedInstallManifestArgs.fromMap(Map<String, dynamic> map) {
    return GetAttachedInstallManifestArgs(
      clusterId: Input.asInput<String>(map['clusterId']),
      location: Input.asInput<String>(map['location']),
      platformVersion: Input.asInput<String>(map['platformVersion']),
      project: Input.asInput<String>(map['project']),
    );
  }
}
