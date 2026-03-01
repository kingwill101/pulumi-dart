// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
