// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the use of Kubernetes Service Accounts in GCP IAM policies.
class WorkloadIdentityConfigContainerV1beta1 {
  /// IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  final String? identityNamespace;

  /// identity provider is the third party identity provider.
  final String? identityProvider;

  /// The workload pool to attach all Kubernetes service accounts to.
  final String? workloadPool;

  /// Creates a new [WorkloadIdentityConfigContainerV1beta1].
  /// [identityNamespace] IAM Identity Namespace to attach all Kubernetes Service Accounts to.
  /// [identityProvider] identity provider is the third party identity provider.
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  WorkloadIdentityConfigContainerV1beta1({
    this.identityNamespace,
    this.identityProvider,
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identityNamespaceValue = identityNamespace;
    if (identityNamespaceValue != null) {
      map['identityNamespace'] = identityNamespaceValue;
    }
    final identityProviderValue = identityProvider;
    if (identityProviderValue != null) {
      map['identityProvider'] = identityProviderValue;
    }
    final workloadPoolValue = workloadPool;
    if (workloadPoolValue != null) {
      map['workloadPool'] = workloadPoolValue;
    }
    return map;
  }

  factory WorkloadIdentityConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityConfigContainerV1beta1(
      identityNamespace: map['identityNamespace'] == null
          ? null
          : map['identityNamespace'] as String,
      identityProvider: map['identityProvider'] == null
          ? null
          : map['identityProvider'] as String,
      workloadPool:
          map['workloadPool'] == null ? null : map['workloadPool'] as String,
    );
  }
}
