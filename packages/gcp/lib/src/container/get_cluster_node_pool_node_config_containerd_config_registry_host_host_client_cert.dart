// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpSecretManagerSecretUri'] = gcpSecretManagerSecretUri;
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
