// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
