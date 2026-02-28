// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMeshCertificate {
  /// When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster.
  final bool enableCertificates;

  /// Creates a new [GetClusterMeshCertificate].
  /// [enableCertificates] When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster.
  GetClusterMeshCertificate({
    required this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableCertificates'] = enableCertificates;
    return map;
  }

  factory GetClusterMeshCertificate.fromMap(Map<String, dynamic> map) {
    return GetClusterMeshCertificate(
      enableCertificates: map['enableCertificates'] as bool,
    );
  }
}
