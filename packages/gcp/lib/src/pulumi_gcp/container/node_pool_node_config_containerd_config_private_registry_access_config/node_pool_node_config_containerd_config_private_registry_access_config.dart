// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config/node_pool_node_config_containerd_config_private_registry_access_config_certificate_authority_domain_config.dart';

class NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig {
  /// Parameters for configuring CA certificate and domains.
  final List<
          NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>?
      certificateAuthorityDomainConfigs;

  /// Whether or not private registries are configured.
  final bool enabled;

  NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig({
    this.certificateAuthorityDomainConfigs,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityDomainConfigsValue =
        certificateAuthorityDomainConfigs;
    if (certificateAuthorityDomainConfigsValue != null) {
      map['certificateAuthorityDomainConfigs'] = pulumi.Input.encodeList<
              NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig,
              Map<String, dynamic>>(
          certificateAuthorityDomainConfigsValue, (value) => value.toMap());
    }
    map['enabled'] = enabled;
    return map;
  }

  factory NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig(
      certificateAuthorityDomainConfigs: map[
                  'certificateAuthorityDomainConfigs'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig>(
              map['certificateAuthorityDomainConfigs'],
              (value) =>
                  NodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfigCertificateAuthorityDomainConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
