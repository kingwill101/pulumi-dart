// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfigResponse2 {
  /// IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  final String identityNamespace;

  /// identity provider is the third party identity provider.
  final String identityProvider;

  /// The workload pool to attach all Kubernetes service accounts to.
  final String workloadPool;

  WorkloadIdentityConfigResponse2({
    required this.identityNamespace,
    required this.identityProvider,
    required this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityNamespace'] = identityNamespace;
    map['identityProvider'] = identityProvider;
    map['workloadPool'] = workloadPool;
    return map;
  }

  factory WorkloadIdentityConfigResponse2.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityConfigResponse2(
      identityNamespace: map['identityNamespace'] as String,
      identityProvider: map['identityProvider'] as String,
      workloadPool: map['workloadPool'] as String,
    );
  }
}
