// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa({
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

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
