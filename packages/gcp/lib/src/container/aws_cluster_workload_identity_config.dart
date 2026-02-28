// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterWorkloadIdentityConfig {
  /// The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  final String? identityProvider;

  /// The OIDC issuer URL for this cluster.
  final String? issuerUri;

  /// The Workload Identity Pool associated to the cluster.
  final String? workloadPool;

  /// Creates a new [AwsClusterWorkloadIdentityConfig].
  /// [identityProvider] The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  /// [issuerUri] The OIDC issuer URL for this cluster.
  /// [workloadPool] The Workload Identity Pool associated to the cluster.
  AwsClusterWorkloadIdentityConfig({
    this.identityProvider,
    this.issuerUri,
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identityProviderValue = identityProvider;
    if (identityProviderValue != null) {
      map['identityProvider'] = identityProviderValue;
    }
    final issuerUriValue = issuerUri;
    if (issuerUriValue != null) {
      map['issuerUri'] = issuerUriValue;
    }
    final workloadPoolValue = workloadPool;
    if (workloadPoolValue != null) {
      map['workloadPool'] = workloadPoolValue;
    }
    return map;
  }

  factory AwsClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return AwsClusterWorkloadIdentityConfig(
      identityProvider: map['identityProvider'] == null
          ? null
          : map['identityProvider'] as String,
      issuerUri: map['issuerUri'] == null ? null : map['issuerUri'] as String,
      workloadPool:
          map['workloadPool'] == null ? null : map['workloadPool'] as String,
    );
  }
}
