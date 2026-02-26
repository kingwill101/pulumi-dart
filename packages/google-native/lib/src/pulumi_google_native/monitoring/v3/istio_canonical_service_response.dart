// ignore_for_file: unused_element, unnecessary_cast

/// Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.8 will have their services ingested as this type.
class IstioCanonicalServiceResponse {
  /// The name of the canonical service underlying this service. Corresponds to the destination_canonical_service_name metric label in label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String canonicalService;

  /// The namespace of the canonical service underlying this service. Corresponds to the destination_canonical_service_namespace metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String canonicalServiceNamespace;

  /// Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh_uid metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String meshUid;

  IstioCanonicalServiceResponse({
    required this.canonicalService,
    required this.canonicalServiceNamespace,
    required this.meshUid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalService'] = canonicalService;
    map['canonicalServiceNamespace'] = canonicalServiceNamespace;
    map['meshUid'] = meshUid;
    return map;
  }

  factory IstioCanonicalServiceResponse.fromMap(Map<String, dynamic> map) {
    return IstioCanonicalServiceResponse(
      canonicalService: map['canonicalService'] as String,
      canonicalServiceNamespace: map['canonicalServiceNamespace'] as String,
      meshUid: map['meshUid'] as String,
    );
  }
}
