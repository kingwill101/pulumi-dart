// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config_gcp_secret_manager_certificate_config.dart';

class ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  /// List of fully-qualified-domain-names. IPv4s and port specification are supported.
  final List<String> fqdns;

  /// Parameters for configuring a certificate hosted in GCP SecretManager.
  final ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
  gcpSecretManagerCertificateConfig;

  /// Creates a new [ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig].
  /// [fqdns] List of fully-qualified-domain-names. IPv4s and port specification are supported.
  /// [gcpSecretManagerCertificateConfig] Parameters for configuring a certificate hosted in GCP SecretManager.
  ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': fqdns,
      'gcpSecretManagerCertificateConfig': gcpSecretManagerCertificateConfig
          .toMap(),
    };
  }

  factory ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig(
      fqdns: (map['fqdns'] as List).cast<String>(),
      gcpSecretManagerCertificateConfig:
          ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig.fromMap(
            (map['gcpSecretManagerCertificateConfig'] as Map)
                .cast<String, dynamic>(),
          ),
    );
  }
}
