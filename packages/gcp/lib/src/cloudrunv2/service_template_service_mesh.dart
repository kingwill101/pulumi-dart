// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateServiceMesh {
  /// The Mesh resource name. For more information see https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.meshes#resource:-mesh.
  final String? mesh;

  /// Creates a new [ServiceTemplateServiceMesh].
  /// [mesh] The Mesh resource name. For more information see https://cloud.google.com/service-mesh/docs/reference/network-services/rest/v1/projects.locations.meshes#resource:-mesh.
  ServiceTemplateServiceMesh({
    this.mesh,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final meshValue = mesh;
    if (meshValue != null) {
      map['mesh'] = meshValue;
    }
    return map;
  }

  factory ServiceTemplateServiceMesh.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateServiceMesh(
      mesh: map['mesh'] == null ? null : map['mesh'] as String,
    );
  }
}
