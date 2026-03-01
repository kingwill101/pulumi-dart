// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final List<
    GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
  >
  certificateAuthorityDomainConfigs;

  /// Whether or not private registries are configured.
  final bool enabled;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] Parameters for configuring CA certificate and domains.
  /// [enabled] Whether or not private registries are configured.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig({
    required this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityDomainConfigs':
          pulumi.Input.encodeList<
            GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
            Map<String, dynamic>
          >(certificateAuthorityDomainConfigs, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs:
          pulumi.Input.decodeList<
            GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
          >(
            map['certificateAuthorityDomainConfigs'],
            (value) =>
                GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      enabled: map['enabled'] as bool,
    );
  }
}
