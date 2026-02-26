// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAttachedInstallManifest.
class GetAttachedInstallManifestResult {
  final String clusterId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// A string with the YAML manifest that needs to be applied to the cluster.
  final String manifest;
  final String platformVersion;
  final String project;

  GetAttachedInstallManifestResult({
    required this.clusterId,
    required this.id,
    required this.location,
    required this.manifest,
    required this.platformVersion,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['id'] = id;
    map['location'] = location;
    map['manifest'] = manifest;
    map['platformVersion'] = platformVersion;
    map['project'] = project;
    return map;
  }

  factory GetAttachedInstallManifestResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedInstallManifestResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      manifest: map['manifest'] as String,
      platformVersion: map['platformVersion'] as String,
      project: map['project'] as String,
    );
  }
}
