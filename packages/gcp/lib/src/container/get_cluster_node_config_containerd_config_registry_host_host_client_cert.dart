// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}

