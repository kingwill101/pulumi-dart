// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_upgrade_setting_blue_green_setting.dart';

class GetClusterNodePoolUpgradeSetting {
  /// Settings for BlueGreen node pool upgrade.
  final List<GetClusterNodePoolUpgradeSettingBlueGreenSetting>
  blueGreenSettings;

  /// The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater.
  final int maxSurge;

  /// The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater.
  final int maxUnavailable;

  /// Update strategy for the given nodepool.
  final String strategy;

  /// Creates a new [GetClusterNodePoolUpgradeSetting].
  /// [blueGreenSettings] Settings for BlueGreen node pool upgrade.
  /// [maxSurge] The number of additional nodes that can be added to the node pool during an upgrade. Increasing max_surge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater.
  /// [maxUnavailable] The number of nodes that can be simultaneously unavailable during an upgrade. Increasing max_unavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater.
  /// [strategy] Update strategy for the given nodepool.
  GetClusterNodePoolUpgradeSetting({
    required this.blueGreenSettings,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenSettings':
          pulumi.Input.encodeList<
            GetClusterNodePoolUpgradeSettingBlueGreenSetting,
            Map<String, dynamic>
          >(blueGreenSettings, (value) => value.toMap()),
      'maxSurge': maxSurge,
      'maxUnavailable': maxUnavailable,
      'strategy': strategy,
    };
  }

  factory GetClusterNodePoolUpgradeSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSetting(
      blueGreenSettings:
          pulumi.Input.decodeList<
            GetClusterNodePoolUpgradeSettingBlueGreenSetting
          >(
            map['blueGreenSettings'],
            (value) => GetClusterNodePoolUpgradeSettingBlueGreenSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      maxSurge: map['maxSurge'] as int,
      maxUnavailable: map['maxUnavailable'] as int,
      strategy: map['strategy'] as String,
    );
  }
}
