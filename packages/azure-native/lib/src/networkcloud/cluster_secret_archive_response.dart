// ignore_for_file: unused_element, unnecessary_cast


class ClusterSecretArchiveResponse {
  /// The resource ID of the key vault to archive the secrets of the cluster.
  final String keyVaultId;
  /// The indicator if the specified key vault should be used to archive the secrets of the cluster.
  final String? useKeyVault;

  /// Creates a new [ClusterSecretArchiveResponse].
  /// [keyVaultId] The resource ID of the key vault to archive the secrets of the cluster.
  /// [useKeyVault] The indicator if the specified key vault should be used to archive the secrets of the cluster.
  ClusterSecretArchiveResponse({
    required this.keyVaultId,
    this.useKeyVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'useKeyVault': ?useKeyVault,
    };
  }

  factory ClusterSecretArchiveResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSecretArchiveResponse(
      keyVaultId: map['keyVaultId'] as String,
      useKeyVault: map['useKeyVault'] == null ? null : map['useKeyVault'] as String,
    );
  }
}

