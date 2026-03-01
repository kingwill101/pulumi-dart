// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig {
  /// URI for the secret that hosts a certificate. Must be in the format 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
  final String secretUri;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig].
  /// [secretUri] URI for the secret that hosts a certificate. Must be in the format 'projects/PROJECT_NUM/secrets/SECRET_NAME/versions/VERSION_OR_LATEST'.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig({
    required this.secretUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretUri': secretUri};
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig(
      secretUri: map['secretUri'] as String,
    );
  }
}
