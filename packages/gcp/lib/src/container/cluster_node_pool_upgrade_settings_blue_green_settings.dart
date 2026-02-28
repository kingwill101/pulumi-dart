// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_pool_upgrade_settings_blue_green_settings_autoscaled_rollout_policy.dart';
import 'cluster_node_pool_upgrade_settings_blue_green_settings_standard_rollout_policy.dart';

class ClusterNodePoolUpgradeSettingsBlueGreenSettings {
  /// Autoscaled rollout policy for blue-green upgrade.
  final ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy?
      autoscaledRolloutPolicy;

  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? nodePoolSoakDuration;

  /// Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  final ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy?
      standardRolloutPolicy;

  /// Creates a new [ClusterNodePoolUpgradeSettingsBlueGreenSettings].
  /// [autoscaledRolloutPolicy] Autoscaled rollout policy for blue-green upgrade.
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  ClusterNodePoolUpgradeSettingsBlueGreenSettings({
    this.autoscaledRolloutPolicy,
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscaledRolloutPolicyValue = autoscaledRolloutPolicy;
    if (autoscaledRolloutPolicyValue != null) {
      map['autoscaledRolloutPolicy'] = autoscaledRolloutPolicyValue.toMap();
    }
    final nodePoolSoakDurationValue = nodePoolSoakDuration;
    if (nodePoolSoakDurationValue != null) {
      map['nodePoolSoakDuration'] = nodePoolSoakDurationValue;
    }
    final standardRolloutPolicyValue = standardRolloutPolicy;
    if (standardRolloutPolicyValue != null) {
      map['standardRolloutPolicy'] = standardRolloutPolicyValue.toMap();
    }
    return map;
  }

  factory ClusterNodePoolUpgradeSettingsBlueGreenSettings.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolUpgradeSettingsBlueGreenSettings(
      autoscaledRolloutPolicy: map['autoscaledRolloutPolicy'] == null
          ? null
          : ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy
              .fromMap((map['autoscaledRolloutPolicy'] as Map)
                  .cast<String, dynamic>()),
      nodePoolSoakDuration: map['nodePoolSoakDuration'] == null
          ? null
          : map['nodePoolSoakDuration'] as String,
      standardRolloutPolicy: map['standardRolloutPolicy'] == null
          ? null
          : ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy
              .fromMap((map['standardRolloutPolicy'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
