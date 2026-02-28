// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_private_registry_access_config_certificate_authority_domain_config_gcp_secret_manager_certificate_config.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  /// List of fully-qualified-domain-names. IPv4s and port specification are supported.
  final List<String> fqdns;

  /// Parameters for configuring a certificate hosted in GCP SecretManager.
  final ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
      gcpSecretManagerCertificateConfig;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig].
  /// [fqdns] List of fully-qualified-domain-names. IPv4s and port specification are supported.
  /// [gcpSecretManagerCertificateConfig] Parameters for configuring a certificate hosted in GCP SecretManager.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fqdns'] = fqdns;
    map['gcpSecretManagerCertificateConfig'] =
        gcpSecretManagerCertificateConfig.toMap();
    return map;
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig(
      fqdns: (map['fqdns'] as List).cast<String>(),
      gcpSecretManagerCertificateConfig:
          ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
              .fromMap((map['gcpSecretManagerCertificateConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
