// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_environment_config_master_authorized_networks_config_cidr_block/get_environment_config_master_authorized_networks_config_cidr_block.dart';

class GetEnvironmentConfigMasterAuthorizedNetworksConfig {
  /// cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS.
  final List<GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock>
      cidrBlocks;

  /// Whether or not master authorized networks is enabled.
  final bool enabled;

  GetEnvironmentConfigMasterAuthorizedNetworksConfig({
    required this.cidrBlocks,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = pulumi.Input.encodeList<
        GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock,
        Map<String, dynamic>>(cidrBlocks, (value) => value.toMap());
    map['enabled'] = enabled;
    return map;
  }

  factory GetEnvironmentConfigMasterAuthorizedNetworksConfig.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigMasterAuthorizedNetworksConfig(
      cidrBlocks: pulumi.Input.decodeList<
              GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock>(
          map['cidrBlocks'],
          (value) => GetEnvironmentConfigMasterAuthorizedNetworksConfigCidrBlock
              .fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
    );
  }
}
