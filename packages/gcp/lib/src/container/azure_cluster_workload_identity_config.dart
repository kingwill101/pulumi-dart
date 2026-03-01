// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterWorkloadIdentityConfig {
  /// The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  final String? identityProvider;

  /// The OIDC issuer URL for this cluster.
  final String? issuerUri;

  /// The Workload Identity Pool associated to the cluster.
  final String? workloadPool;

  /// Creates a new [AzureClusterWorkloadIdentityConfig].
  /// [identityProvider] The ID of the OIDC Identity Provider (IdP) associated to the Workload Identity Pool.
  /// [issuerUri] The OIDC issuer URL for this cluster.
  /// [workloadPool] The Workload Identity Pool associated to the cluster.
  AzureClusterWorkloadIdentityConfig({
    this.identityProvider,
    this.issuerUri,
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProvider': ?identityProvider,
      'issuerUri': ?issuerUri,
      'workloadPool': ?workloadPool,
    };
  }

  factory AzureClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return AzureClusterWorkloadIdentityConfig(
      identityProvider: map['identityProvider'] == null
          ? null
          : map['identityProvider'] as String,
      issuerUri: map['issuerUri'] == null ? null : map['issuerUri'] as String,
      workloadPool: map['workloadPool'] == null
          ? null
          : map['workloadPool'] as String,
    );
  }
}
