// ignore_for_file: unused_element, unnecessary_cast

import 'node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config_gcp_secret_manager_certificate_config.dart';

class NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  /// List of fully-qualified-domain-names. IPv4s and port specification are supported.
  final List<String> fqdns;

  /// Parameters for configuring a certificate hosted in GCP SecretManager.
  final NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
  gcpSecretManagerCertificateConfig;

  /// Creates a new [NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig].
  /// [fqdns] List of fully-qualified-domain-names. IPv4s and port specification are supported.
  /// [gcpSecretManagerCertificateConfig] Parameters for configuring a certificate hosted in GCP SecretManager.
  NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
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

  factory NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig(
      fqdns: (map['fqdns'] as List).cast<String>(),
      gcpSecretManagerCertificateConfig:
          NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig.fromMap(
            (map['gcpSecretManagerCertificateConfig'] as Map)
                .cast<String, dynamic>(),
          ),
    );
  }
}
