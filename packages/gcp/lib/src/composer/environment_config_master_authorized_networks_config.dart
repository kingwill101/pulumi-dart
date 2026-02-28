// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_master_authorized_networks_config_cidr_block.dart';

class EnvironmentConfigMasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock>?
      cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool enabled;

  /// Creates a new [EnvironmentConfigMasterAuthorizedNetworksConfig].
  /// [cidrBlocks] cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  /// [enabled] Whether or not master authorized networks is enabled.
  EnvironmentConfigMasterAuthorizedNetworksConfig({
    this.cidrBlocks,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlocksValue = cidrBlocks;
    if (cidrBlocksValue != null) {
      map['cidrBlocks'] = pulumi.Input.encodeList<
          EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock,
          Map<String, dynamic>>(cidrBlocksValue, (value) => value.toMap());
    }
    map['enabled'] = enabled;
    return map;
  }

  factory EnvironmentConfigMasterAuthorizedNetworksConfig.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigMasterAuthorizedNetworksConfig(
      cidrBlocks: map['cidrBlocks'] == null
          ? null
          : pulumi.Input.decodeList<
                  EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock>(
              map['cidrBlocks'],
              (value) =>
                  EnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock
                      .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
