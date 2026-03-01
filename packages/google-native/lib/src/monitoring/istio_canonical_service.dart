// ignore_for_file: unused_element, unnecessary_cast

/// Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.8 will have their services ingested as this type.
class IstioCanonicalService {
  /// The name of the canonical service underlying this service. Corresponds to the destination_canonical_service_name metric label in label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String? canonicalService;

  /// The namespace of the canonical service underlying this service. Corresponds to the destination_canonical_service_namespace metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String? canonicalServiceNamespace;

  /// Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh_uid metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String? meshUid;

  /// Creates a new [IstioCanonicalService].
  /// [canonicalService] The name of the canonical service underlying this service. Corresponds to the destination_canonical_service_name metric label in label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  /// [canonicalServiceNamespace] The namespace of the canonical service underlying this service. Corresponds to the destination_canonical_service_namespace metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  /// [meshUid] Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh_uid metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  IstioCanonicalService({
    this.canonicalService,
    this.canonicalServiceNamespace,
    this.meshUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalService': ?canonicalService,
      'canonicalServiceNamespace': ?canonicalServiceNamespace,
      'meshUid': ?meshUid,
    };
  }

  factory IstioCanonicalService.fromMap(Map<String, dynamic> map) {
    return IstioCanonicalService(
      canonicalService: map['canonicalService'] == null
          ? null
          : map['canonicalService'] as String,
      canonicalServiceNamespace: map['canonicalServiceNamespace'] == null
          ? null
          : map['canonicalServiceNamespace'] as String,
      meshUid: map['meshUid'] == null ? null : map['meshUid'] as String,
    );
  }
}
