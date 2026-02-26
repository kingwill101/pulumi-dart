// ignore_for_file: unused_element, unnecessary_cast

/// Canonical service scoped to an Istio mesh. Anthos clusters running ASM >= 1.6.8 will have their services ingested as this type.
class IstioCanonicalService {
  /// The name of the canonical service underlying this service. Corresponds to the destination_canonical_service_name metric label in label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String? canonicalService;

  /// The namespace of the canonical service underlying this service. Corresponds to the destination_canonical_service_namespace metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String? canonicalServiceNamespace;

  /// Identifier for the Istio mesh in which this canonical service is defined. Corresponds to the mesh_uid metric label in Istio metrics (https://cloud.google.com/monitoring/api/metrics_istio).
  final String? meshUid;

  IstioCanonicalService({
    this.canonicalService,
    this.canonicalServiceNamespace,
    this.meshUid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final canonicalServiceValue = canonicalService;
    if (canonicalServiceValue != null) {
      map['canonicalService'] = canonicalServiceValue;
    }
    final canonicalServiceNamespaceValue = canonicalServiceNamespace;
    if (canonicalServiceNamespaceValue != null) {
      map['canonicalServiceNamespace'] = canonicalServiceNamespaceValue;
    }
    final meshUidValue = meshUid;
    if (meshUidValue != null) {
      map['meshUid'] = meshUidValue;
    }
    return map;
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
