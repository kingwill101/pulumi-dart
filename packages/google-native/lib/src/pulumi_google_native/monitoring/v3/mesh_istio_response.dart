// ignore_for_file: unused_element, unnecessary_cast

/// Istio service scoped to an Istio mesh. Anthos clusters running ASM < 1.6.8 will have their services ingested as this type.
class MeshIstioResponse {
  /// Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
  final String meshUid;

  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final String serviceName;

  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final String serviceNamespace;

  MeshIstioResponse({
    required this.meshUid,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['meshUid'] = meshUid;
    map['serviceName'] = serviceName;
    map['serviceNamespace'] = serviceNamespace;
    return map;
  }

  factory MeshIstioResponse.fromMap(Map<String, dynamic> map) {
    return MeshIstioResponse(
      meshUid: map['meshUid'] as String,
      serviceName: map['serviceName'] as String,
      serviceNamespace: map['serviceNamespace'] as String,
    );
  }
}
