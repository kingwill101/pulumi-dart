// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa {
  /// URI for the Secret Manager secret that hosts the certificate.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the certificate.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpSecretManagerSecretUri': gcpSecretManagerSecretUri,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostCa(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}

