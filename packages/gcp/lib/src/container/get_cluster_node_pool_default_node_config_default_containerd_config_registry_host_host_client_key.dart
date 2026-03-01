// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey {
  /// URI for the Secret Manager secret that hosts the private key.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the private key.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientKey(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
