// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  final String? workloadPool;

  WorkloadIdentityConfig({
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final workloadPoolValue = workloadPool;
    if (workloadPoolValue != null) {
      map['workloadPool'] = workloadPoolValue;
    }
    return map;
  }

  factory WorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityConfig(
      workloadPool:
          map['workloadPool'] == null ? null : map['workloadPool'] as String,
    );
  }
}
