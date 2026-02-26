// ignore_for_file: unused_element, unnecessary_cast

class GetClusterWorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  final String workloadPool;

  GetClusterWorkloadIdentityConfig({
    required this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['workloadPool'] = workloadPool;
    return map;
  }

  factory GetClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterWorkloadIdentityConfig(
      workloadPool: map['workloadPool'] as String,
    );
  }
}
