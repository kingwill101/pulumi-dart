// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfigResponse {
  /// The workload pool to attach all Kubernetes service accounts to.
  final String workloadPool;

  WorkloadIdentityConfigResponse({
    required this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['workloadPool'] = workloadPool;
    return map;
  }

  factory WorkloadIdentityConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityConfigResponse(
      workloadPool: map['workloadPool'] as String,
    );
  }
}
