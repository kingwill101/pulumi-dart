// ignore_for_file: unused_element, unnecessary_cast


/// ResourceManifest represents a single Kubernetes resource to be applied to the cluster.
class ResourceManifestResponseGkehubV1beta {
  /// Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  final bool clusterScoped;
  /// YAML manifest of the resource.
  final String manifest;

  /// Creates a new [ResourceManifestResponseGkehubV1beta].
  /// [clusterScoped] Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  /// [manifest] YAML manifest of the resource.
  ResourceManifestResponseGkehubV1beta({
    required this.clusterScoped,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterScoped': clusterScoped,
      'manifest': manifest,
    };
  }

  factory ResourceManifestResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ResourceManifestResponseGkehubV1beta(
      clusterScoped: map['clusterScoped'] as bool,
      manifest: map['manifest'] as String,
    );
  }
}

