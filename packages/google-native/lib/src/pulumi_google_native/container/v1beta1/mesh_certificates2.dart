// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificates2 {
  /// enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  final bool? enableCertificates;

  MeshCertificates2({
    this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableCertificatesValue = enableCertificates;
    if (enableCertificatesValue != null) {
      map['enableCertificates'] = enableCertificatesValue;
    }
    return map;
  }

  factory MeshCertificates2.fromMap(Map<String, dynamic> map) {
    return MeshCertificates2(
      enableCertificates: map['enableCertificates'] == null
          ? null
          : map['enableCertificates'] as bool,
    );
  }
}
