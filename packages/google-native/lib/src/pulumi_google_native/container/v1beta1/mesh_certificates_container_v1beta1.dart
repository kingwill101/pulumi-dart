// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificatesContainerV1beta1 {
  /// enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  final bool? enableCertificates;

  MeshCertificatesContainerV1beta1({
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

  factory MeshCertificatesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MeshCertificatesContainerV1beta1(
      enableCertificates: map['enableCertificates'] == null
          ? null
          : map['enableCertificates'] as bool,
    );
  }
}
