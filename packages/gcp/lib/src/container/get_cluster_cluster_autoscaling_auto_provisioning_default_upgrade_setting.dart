// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting_blue_green_setting.dart';

class GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting {
  /// Settings for blue-green upgrade strategy.
  final List<
          GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting>
      blueGreenSettings;

  /// The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
  final int maxSurge;

  /// The maximum number of nodes that can be simultaneously unavailable during the upgrade process.
  final int maxUnavailable;

  /// Update strategy of the node pool.
  final String strategy;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting].
  /// [blueGreenSettings] Settings for blue-green upgrade strategy.
  /// [maxSurge] The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
  /// [maxUnavailable] The maximum number of nodes that can be simultaneously unavailable during the upgrade process.
  /// [strategy] Update strategy of the node pool.
  GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting({
    required this.blueGreenSettings,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blueGreenSettings'] = pulumi.Input.encodeList<
        GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting,
        Map<String, dynamic>>(blueGreenSettings, (value) => value.toMap());
    map['maxSurge'] = maxSurge;
    map['maxUnavailable'] = maxUnavailable;
    map['strategy'] = strategy;
    return map;
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting.fromMap(
      Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting(
      blueGreenSettings: pulumi.Input.decodeList<
              GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting>(
          map['blueGreenSettings'],
          (value) =>
              GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting
                  .fromMap((value as Map).cast<String, dynamic>())),
      maxSurge: map['maxSurge'] as int,
      maxUnavailable: map['maxUnavailable'] as int,
      strategy: map['strategy'] as String,
    );
  }
}
