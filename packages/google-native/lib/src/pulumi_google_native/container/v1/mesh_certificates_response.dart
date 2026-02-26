// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificatesResponse {
  /// enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  final bool enableCertificates;

  MeshCertificatesResponse({
    required this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableCertificates'] = enableCertificates;
    return map;
  }

  factory MeshCertificatesResponse.fromMap(Map<String, dynamic> map) {
    return MeshCertificatesResponse(
      enableCertificates: map['enableCertificates'] as bool,
    );
  }
}
