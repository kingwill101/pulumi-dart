// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_default_node_config_default_containerd_config_private_registry_access_config_certificate_authority_domain_config/get_cluster_node_pool_default_node_config_default_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final List<
          GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>
      certificateAuthorityDomainConfigs;

  /// Whether or not private registries are configured.
  final bool enabled;

  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig({
    required this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityDomainConfigs'] = Input.encodeList<
        GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
        Map<String,
            dynamic>>(certificateAuthorityDomainConfigs, (value) => value.toMap());
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: Input.decodeList<
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(
          map['certificateAuthorityDomainConfigs'],
          (value) =>
              GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
