// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsPersistentVolumeSourcePatch {
  /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String? endpoints;
  /// endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String? endpointsNamespace;
  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String? path;
  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final bool? readOnly;

  /// Creates a new [GlusterfsPersistentVolumeSourcePatch].
  /// [endpoints] endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [endpointsNamespace] endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [path] path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [readOnly] readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  GlusterfsPersistentVolumeSourcePatch({
    this.endpoints,
    this.endpointsNamespace,
    this.path,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints,
      'endpointsNamespace': ?endpointsNamespace,
      'path': ?path,
      'readOnly': ?readOnly,
    };
  }

  factory GlusterfsPersistentVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return GlusterfsPersistentVolumeSourcePatch(
      endpoints: map['endpoints'] == null ? null : map['endpoints'] as String,
      endpointsNamespace: map['endpointsNamespace'] == null ? null : map['endpointsNamespace'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

