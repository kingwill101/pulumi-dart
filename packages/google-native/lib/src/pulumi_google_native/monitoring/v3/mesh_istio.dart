// ignore_for_file: unused_element, unnecessary_cast

/// Istio service scoped to an Istio mesh. Anthos clusters running ASM < 1.6.8 will have their services ingested as this type.
class MeshIstio {
  /// Identifier for the mesh in which this Istio service is defined. Corresponds to the mesh_uid metric label in Istio metrics.
  final String? meshUid;

  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final String? serviceName;

  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final String? serviceNamespace;

  MeshIstio({
    this.meshUid,
    this.serviceName,
    this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final meshUidValue = meshUid;
    if (meshUidValue != null) {
      map['meshUid'] = meshUidValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final serviceNamespaceValue = serviceNamespace;
    if (serviceNamespaceValue != null) {
      map['serviceNamespace'] = serviceNamespaceValue;
    }
    return map;
  }

  factory MeshIstio.fromMap(Map<String, dynamic> map) {
    return MeshIstio(
      meshUid: map['meshUid'] == null ? null : map['meshUid'] as String,
      serviceName:
          map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceNamespace: map['serviceNamespace'] == null
          ? null
          : map['serviceNamespace'] as String,
    );
  }
}
