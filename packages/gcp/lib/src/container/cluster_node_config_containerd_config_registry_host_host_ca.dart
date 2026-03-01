// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  ClusterNodeConfigContainerdConfigRegistryHostHostCa({
    this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': ?gcpSecretManagerSecretUri,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHostHostCa.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
