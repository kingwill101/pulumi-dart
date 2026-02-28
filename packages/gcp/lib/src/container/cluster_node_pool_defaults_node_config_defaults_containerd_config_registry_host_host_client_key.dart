// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpSecretManagerSecretUriValue = gcpSecretManagerSecretUri;
    if (gcpSecretManagerSecretUriValue != null) {
      map['gcpSecretManagerSecretUri'] = gcpSecretManagerSecretUriValue;
    }
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
