// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final List<
          GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>
      certificateAuthorityDomainConfigs;

  /// Whether or not private registries are configured.
  final bool enabled;

  /// Creates a new [GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig].
  /// [certificateAuthorityDomainConfigs] Parameters for configuring CA certificate and domains.
  /// [enabled] Whether or not private registries are configured.
  GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    required this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityDomainConfigs'] = pulumi.Input.encodeList<
        GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
        Map<String,
            dynamic>>(certificateAuthorityDomainConfigs, (value) => value.toMap());
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: pulumi.Input.decodeList<
              GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(
          map['certificateAuthorityDomainConfigs'],
          (value) =>
              GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
