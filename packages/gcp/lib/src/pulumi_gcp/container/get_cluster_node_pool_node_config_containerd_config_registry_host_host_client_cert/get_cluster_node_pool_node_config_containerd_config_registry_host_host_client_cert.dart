// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final String gcpSecretManagerSecretUri;

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
