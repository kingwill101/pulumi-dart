// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config_gcp_secret_manager_certificate_config.dart';

class GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  /// List of fully-qualified-domain-names. IPv4s and port specification are supported.
  final List<String> fqdns;

  /// Parameters for configuring a certificate hosted in GCP SecretManager.
  final List<
          GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig>
      gcpSecretManagerCertificateConfigs;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig].
  /// [fqdns] List of fully-qualified-domain-names. IPv4s and port specification are supported.
  /// [gcpSecretManagerCertificateConfigs] Parameters for configuring a certificate hosted in GCP SecretManager.
  GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fqdns'] = fqdns;
    map['gcpSecretManagerCertificateConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig,
            Map<String, dynamic>>(
        gcpSecretManagerCertificateConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig(
      fqdns: (map['fqdns'] as List).cast<String>(),
      gcpSecretManagerCertificateConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig>(
          map['gcpSecretManagerCertificateConfigs'],
          (value) =>
              GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
