// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_node_pool_upgrade_setting_blue_green_setting/get_cluster_node_pool_upgrade_setting_blue_green_setting.dart';

class GetClusterNodePoolUpgradeSetting {
  /// Settings for BlueGreen node pool upgrade.
  final List<GetClusterNodePoolUpgradeSettingBlueGreenSetting>
      blueGreenSettings;

  /// The number of additional nodes that can be added to the node pool during an upgrade. Increasing<span pulumi-lang-nodejs=" maxSurge " pulumi-lang-dotnet=" MaxSurge " pulumi-lang-go=" maxSurge " pulumi-lang-python=" max_surge " pulumi-lang-yaml=" maxSurge " pulumi-lang-java=" maxSurge "> max_surge </span>raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater.
  final int maxSurge;

  /// The number of nodes that can be simultaneously unavailable during an upgrade. Increasing<span pulumi-lang-nodejs=" maxUnavailable " pulumi-lang-dotnet=" MaxUnavailable " pulumi-lang-go=" maxUnavailable " pulumi-lang-python=" max_unavailable " pulumi-lang-yaml=" maxUnavailable " pulumi-lang-java=" maxUnavailable "> max_unavailable </span>raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater.
  final int maxUnavailable;

  /// Update strategy for the given nodepool.
  final String strategy;

  GetClusterNodePoolUpgradeSetting({
    required this.blueGreenSettings,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blueGreenSettings'] = Input.encodeList<
        GetClusterNodePoolUpgradeSettingBlueGreenSetting,
        Map<String, dynamic>>(blueGreenSettings, (value) => value.toMap());
    map['maxSurge'] = maxSurge;
    map['maxUnavailable'] = maxUnavailable;
    map['strategy'] = strategy;
    return map;
  }

  factory GetClusterNodePoolUpgradeSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSetting(
      blueGreenSettings:
          Input.decodeList<GetClusterNodePoolUpgradeSettingBlueGreenSetting>(
              map['blueGreenSettings'],
              (value) =>
                  GetClusterNodePoolUpgradeSettingBlueGreenSetting.fromMap(
                      (value as Map).cast<String, dynamic>())),
      maxSurge: map['maxSurge'] as int,
      maxUnavailable: map['maxUnavailable'] as int,
      strategy: map['strategy'] as String,
    );
  }
}
