// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  ClusterNodeConfigContainerdConfigRegistryHostHostClientKey({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
