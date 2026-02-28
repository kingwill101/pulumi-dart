// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert {
  /// URI for the Secret Manager secret that hosts the client certificate.
  final String gcpSecretManagerSecretUri;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert].
  /// [gcpSecretManagerSecretUri] URI for the Secret Manager secret that hosts the client certificate.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert({
    required this.gcpSecretManagerSecretUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcpSecretManagerSecretUri'] = gcpSecretManagerSecretUri;
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHostClientCert(
      gcpSecretManagerSecretUri: map['gcpSecretManagerSecretUri'] as String,
    );
  }
}
