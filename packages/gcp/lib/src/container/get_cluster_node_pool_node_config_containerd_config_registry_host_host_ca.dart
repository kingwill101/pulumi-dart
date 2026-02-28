// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}

