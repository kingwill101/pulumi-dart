// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_private_registry_access_config_certificate_authority_domain_config_gcp_secret_manager_certificate_config.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig {
  /// List of fully-qualified-domain-names. IPv4s and port specification are supported.
  final List<String> fqdns;

  /// Parameters for configuring a certificate hosted in GCP SecretManager.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig>
      gcpSecretManagerCertificateConfigs;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig].
  /// [fqdns] List of fully-qualified-domain-names. IPv4s and port specification are supported.
  /// [gcpSecretManagerCertificateConfigs] Parameters for configuring a certificate hosted in GCP SecretManager.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig({
    required this.fqdns,
    required this.gcpSecretManagerCertificateConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fqdns'] = fqdns;
    map['gcpSecretManagerCertificateConfigs'] = pulumi.Input.encodeList<
            GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig,
            Map<String, dynamic>>(
        gcpSecretManagerCertificateConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig(
      fqdns: (map['fqdns'] as List).cast<String>(),
      gcpSecretManagerCertificateConfigs: pulumi.Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig>(
          map['gcpSecretManagerCertificateConfigs'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfigGcpSecretManagerCertificateConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
