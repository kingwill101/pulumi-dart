// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final List<
    GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
  >
  certificateAuthorityDomainConfigs;

  /// Whether or not private registries are configured.
  final bool enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] Parameters for configuring CA certificate and domains.
  /// [enabled] Whether or not private registries are configured.
  GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    required this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityDomainConfigs':
          pulumi.Input.encodeList<
            GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
            Map<String, dynamic>
          >(certificateAuthorityDomainConfigs, (value) => value.toMap()),
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs:
          pulumi.Input.decodeList<
            GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
          >(
            map['certificateAuthorityDomainConfigs'],
            (value) =>
                GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      enabled: map['enabled'] as bool,
    );
  }
}
