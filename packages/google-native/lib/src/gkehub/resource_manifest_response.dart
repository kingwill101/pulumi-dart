// ignore_for_file: unused_element, unnecessary_cast

/// ResourceManifest represents a single Kubernetes resource to be applied to the cluster.
class ResourceManifestResponse {
  /// Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  final bool clusterScoped;

  /// YAML manifest of the resource.
  final String manifest;

  /// Creates a new [ResourceManifestResponse].
  /// [clusterScoped] Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  /// [manifest] YAML manifest of the resource.
  ResourceManifestResponse({
    required this.clusterScoped,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterScoped'] = clusterScoped;
    map['manifest'] = manifest;
    return map;
  }

  factory ResourceManifestResponse.fromMap(Map<String, dynamic> map) {
    return ResourceManifestResponse(
      clusterScoped: map['clusterScoped'] as bool,
      manifest: map['manifest'] as String,
    );
  }
}
