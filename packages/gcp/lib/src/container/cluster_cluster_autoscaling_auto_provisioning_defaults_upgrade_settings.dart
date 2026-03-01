// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings_blue_green_settings.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings {
  /// Settings for blue-green upgrade strategy. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  final ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings?
  blueGreenSettings;

  /// The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  final int? maxSurge;

  /// The maximum number of nodes that can be simultaneously unavailable during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  final int? maxUnavailable;

  /// Strategy used for node pool update. Strategy can only be one of BLUE_GREEN or SURGE. The default is value is SURGE.
  final String? strategy;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings].
  /// [blueGreenSettings] Settings for blue-green upgrade strategy. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  /// [maxSurge] The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  /// [maxUnavailable] The maximum number of nodes that can be simultaneously unavailable during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  /// [strategy] Strategy used for node pool update. Strategy can only be one of BLUE_GREEN or SURGE. The default is value is SURGE.
  ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings({
    this.blueGreenSettings,
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenSettings': ?blueGreenSettings == null
          ? null
          : blueGreenSettings!.toMap(),
      'maxSurge': ?maxSurge,
      'maxUnavailable': ?maxUnavailable,
      'strategy': ?strategy,
    };
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings(
      blueGreenSettings: map['blueGreenSettings'] == null
          ? null
          : ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings.fromMap(
              (map['blueGreenSettings'] as Map).cast<String, dynamic>(),
            ),
      maxSurge: map['maxSurge'] == null ? null : map['maxSurge'] as int,
      maxUnavailable: map['maxUnavailable'] == null
          ? null
          : map['maxUnavailable'] as int,
      strategy: map['strategy'] == null ? null : map['strategy'] as String,
    );
  }
}
