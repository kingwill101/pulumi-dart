// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final String? gcpSecretManagerSecretUri;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  ClusterNodeConfigContainerdConfigRegistryHostHostClientCert({
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

  factory ClusterNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] == null
          ? null
          : map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
