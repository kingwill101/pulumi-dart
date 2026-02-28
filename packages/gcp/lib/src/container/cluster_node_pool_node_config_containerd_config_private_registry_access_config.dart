// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// List of configuration objects for CA and domains. Each object identifies a certificate and its assigned domains. See [how to configure for private container registries](https://cloud.google.com/kubernetes-engine/docs/how-to/access-private-registries-private-certificates) for more detail. Example:
  final List<
          ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>?
      certificateAuthorityDomainConfigs;

  /// Enables private registry config. If set to false, all other fields in this object must not be set.
  final bool enabled;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] List of configuration objects for CA and domains. Each object identifies a certificate and its assigned domains. See [how to configure for private container registries](https://cloud.google.com/kubernetes-engine/docs/how-to/access-private-registries-private-certificates) for more detail. Example:
  /// [enabled] Enables private registry config. If set to false, all other fields in this object must not be set.
  ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityDomainConfigsValue =
        certificateAuthorityDomainConfigs;
    if (certificateAuthorityDomainConfigsValue != null) {
      map['certificateAuthorityDomainConfigs'] = pulumi.Input.encodeList<
              ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
              Map<String, dynamic>>(
          certificateAuthorityDomainConfigsValue, (value) => value.toMap());
    }
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: map[
                  'certificateAuthorityDomainConfigs'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(
              map['certificateAuthorityDomainConfigs'],
              (value) =>
                  ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
