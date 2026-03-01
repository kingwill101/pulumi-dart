// ignore_for_file: unused_element, unnecessary_cast


class ClusterWorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  final String? workloadPool;

  /// Creates a new [ClusterWorkloadIdentityConfig].
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  ClusterWorkloadIdentityConfig({
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadPool': ?workloadPool,
    };
  }

  factory ClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterWorkloadIdentityConfig(
      workloadPool: map['workloadPool'] == null ? null : map['workloadPool'] as String,
    );
  }
}

