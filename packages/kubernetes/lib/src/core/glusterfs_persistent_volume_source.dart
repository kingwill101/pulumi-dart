// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsPersistentVolumeSource {
  /// endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String endpoints;
  /// endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String? endpointsNamespace;
  /// path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final String path;
  /// readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  final bool? readOnly;

  /// Creates a new [GlusterfsPersistentVolumeSource].
  /// [endpoints] endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [endpointsNamespace] endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [path] path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  /// [readOnly] readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
  GlusterfsPersistentVolumeSource({
    required this.endpoints,
    this.endpointsNamespace,
    required this.path,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': endpoints,
      'endpointsNamespace': ?endpointsNamespace,
      'path': path,
      'readOnly': ?readOnly,
    };
  }

  factory GlusterfsPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return GlusterfsPersistentVolumeSource(
      endpoints: map['endpoints'] as String,
      endpointsNamespace: map['endpointsNamespace'] == null ? null : map['endpointsNamespace'] as String,
      path: map['path'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
    );
  }
}

