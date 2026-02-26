// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String gcpSecretManagerSecretUri;

  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpSecretManagerSecretUri'] = gcpSecretManagerSecretUri;
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
