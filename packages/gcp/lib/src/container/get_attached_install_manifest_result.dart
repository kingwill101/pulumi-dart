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

  /// Creates a new [GetAttachedInstallManifestResult].
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [manifest] A string with the YAML manifest that needs to be applied to the cluster.
  /// [platformVersion] Required.
  /// [project] Required.
  GetAttachedInstallManifestResult({
    required this.clusterId,
    required this.id,
    required this.location,
    required this.manifest,
    required this.platformVersion,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'location': location,
      'manifest': manifest,
      'platformVersion': platformVersion,
      'project': project,
    };
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

